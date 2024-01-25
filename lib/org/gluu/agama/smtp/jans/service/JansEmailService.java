package org.gluu.agama.smtp.jans.service;

import io.jans.as.common.model.common.User;
import io.jans.as.common.service.common.EncryptionService;
import io.jans.as.common.service.common.UserService;
import io.jans.model.SmtpConfiguration;
import io.jans.orm.exception.operation.EntryNotFoundException;
import io.jans.service.MailService;
import io.jans.service.cdi.util.CdiUtil;
import io.jans.util.StringHelper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.io.IOException;
import io.jans.as.common.service.common.ConfigurationService;
import java.security.SecureRandom;
import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import org.gluu.agama.smtp.EmailService;
import org.gluu.agama.smtp.EmailTemplate;
import org.gluu.agama.smtp.jans.model.ContextData;
import static org.gluu.agama.smtp.jans.Attrs.*;

public class JansEmailService extends EmailService {

    private static final Logger logger = LoggerFactory.getLogger(JansEmailService.class);

    private static final String INUM_ATTR = "inum";
    private static final String EXT_ATTR = "jansExtUid";
    private static final String EXT_UID_PREFIX = "github:";
    private static final int OTP_LENGTH = 6;
    private static final String SUBJECT_TEMPLATE = "Here's your verification code: %s";
    private static final String MSG_TEMPLATE_TEXT = "%s is the code to complete your verification";
    private static final SecureRandom RAND = new SecureRandom();

    private static JansEmailService INSTANCE = null;

    private JansEmailService() {}

    public static synchronized JansEmailService getInstance()
    {
        if (INSTANCE == null)
            INSTANCE = new JansEmailService();

        return INSTANCE;
    }

    public Map<String, String> getUserEntity(String email) {

        User user = getUser(MAIL, email);
        boolean local = user != null;
        logger.debug("There is {} local account for {}", local ? "a" : "no", email);

        if (local) {
            String uid = getSingleValuedAttr(user, UID);
            String inum = getSingleValuedAttr(user, INUM_ATTR);
            String name = getSingleValuedAttr(user, GIVEN_NAME);

            if (name == null) {
                name = getSingleValuedAttr(user, DISPLAY_NAME);

                if (name == null) {
                    name = email.substring(0, email.indexOf("@"));
                }
            }
            //I need a modifiable map
            return new HashMap<>(Map.of(UID, uid, INUM_ATTR, inum, "name", name, "email", email));
        }
        return new HashMap<>();

    }

    public String sendEmail(String to, ContextData context) {

        SmtpConfiguration smtpConfiguration = getSmtpConfiguration();
        IntStream digits = RAND.ints(OTP_LENGTH, 0, 10);
        String otp = digits.mapToObj(i -> "" + i).collect(Collectors.joining());

        String from = smtpConfiguration.getFromEmailAddress();
        String subject = String.format(SUBJECT_TEMPLATE, otp);
        String textBody = String.format(MSG_TEMPLATE_TEXT, otp);
        String htmlBody = EmailTemplate.get(otp, context);

        MailService mailService = CdiUtil.bean(MailService.class);

        if (mailService.sendMailSigned(from, from, to, null, subject, textBody, htmlBody)) {
            logger.debug("E-mail has been delivered to {} with code {}", to, otp);
            return otp;
        }
        logger.debug("E-mail delivery failed, check jans-auth logs");
        return null;

    }

    public String onboardUser(Map<String, String> profile, Set<String> attributes, String extUid)
        throws Exception {

        User user = new User();
        if (StringHelper.isEmpty(profile.get(GIVEN_NAME))) throw new Exception("First name not provided");

        if (extUid != null) {
            user.setAttribute(EXT_ATTR, extUid, true);
        }

        attributes.forEach(attr -> {
            String val = profile.get(attr);
            if (StringHelper.isNotEmpty(val)) {
                user.setAttribute(attr, val);
            }
        });
        UserService userService = CdiUtil.bean(UserService.class);

        user = userService.addUser(user, true);
        if (user == null) throw new EntryNotFoundException("Added user not found");

        return getSingleValuedAttr(user, INUM_ATTR);

    }

    private SmtpConfiguration getSmtpConfiguration() {
        ConfigurationService configurationService = CdiUtil.bean(ConfigurationService.class);
        SmtpConfiguration smtpConfiguration = configurationService.getConfiguration().getSmtpConfiguration();
        return smtpConfiguration;

    }

    private String getSingleValuedAttr(User user, String attribute) {

        Object value = null;
        if (attribute.equals(UID)) {
            //user.getAttribute("uid", true, false) always returns null :(
            value = user.getUserId();
        } else {
            value = user.getAttribute(attribute, true, false);
        }
        return value == null ? null : value.toString();

    }

    private static User getUser(String attributeName, String value) {
        UserService userService = CdiUtil.bean(UserService.class);
        return userService.getUserByAttribute(attributeName, value, true);
    }

}
