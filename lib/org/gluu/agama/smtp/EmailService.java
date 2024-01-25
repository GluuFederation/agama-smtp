package org.gluu.agama.smtp;

import org.gluu.agama.smtp.jans.service.JansEmailService;
import org.gluu.agama.smtp.jans.model.ContextData;

public abstract class EmailService {

    public abstract Map<String, String> getUserEntity(String email);
    public abstract String sendEmail(String to, ContextData context);
    public abstract String onboardUser(Map<String, String> profile, Set<String> attributes, String extUid) throws Exception;

    public static EmailService getInstance(){
        return  JansEmailService.getInstance();
    }
}
