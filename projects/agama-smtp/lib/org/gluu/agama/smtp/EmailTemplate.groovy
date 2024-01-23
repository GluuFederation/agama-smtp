package org.gluu.agama.smtp;

import java.time.*;
import java.time.format.DateTimeFormatter;
import org.gluu.agama.smtp.jans.model.ContextData;

class EmailTemplate {
    
    private static DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MMMM dd, YYYY, HH:mma (O)");

    static String get(String otp, ContextData context) {

        """
<div style="width: 640px; font-size: 18px; font-family: 'Roboto', sans-serif; font-weight: 300">
    <div style="background-color: #b6f6da; border-bottom: 1px solid #0ca65d">
        <img src="https://gluu.org/wp-content/uploads/elementor/thumbs/Logo-qbe8p4qgmufqni0becxda6fnfib6krzb65uihag270.png" alt="Gluu Inc." />
    </div>
    <div style="padding: 12px; border-bottom: 1px solid #ccc;">
        <p>
        <b>Hi,</b>
        <br><br>
        Enter the 6-digit code below to verify your email address at gluu.org
        </p>
        <div style="display: flex; justify-content: center">
            <div style="background-color: #b6f6da; color: #0ca65d; font-size: 40px; font-weight: 400; letter-spacing: 6px" align="center">
                ${otp}
            </div>
        </div>
        <p style="font-size: 14px">
        If you did not make this request, you can safely ignore this email.
        </p>
        <p>
        <br>
        Thanks for helping us keep your account secure.<br>
        The Gluu Team
        <br><br>
        </p>
    </div>
    <div style="padding: 12px; background-color: #ecf0f5; font-size: 16px">
        <p style="color: #48596b; font-weight: 500">When and where this happened<p>
        <p><span style="color: #48596b; font-weight: 500">Date:</span><br>${computeDateTime(context.timeZone)}</p>
        <p><span style="color: #48596b; font-weight: 500">${(context.device == null || context.device.length() == 0) ? '' : ('Device:</span><br>' + context.device)}</p>
        <p><span style="color: #48596b; font-weight: 500">${(context.location || context.location.length() == 0) ? '' : ('Approximate Location:</span><br>' + context.location)}</p>
    </div>
</div>
        """
    }

    private static String computeDateTime(String zone) {

        Instant now = Instant.now();
        try {
            return now.atZone(ZoneId.of(zone)).format(formatter);
        } catch (Exception e) {
            return now.atOffset(ZoneOffset.UTC).format(formatter);
        }
        
    }
    
}
