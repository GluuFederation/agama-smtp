// use plugins and options as needed, for options, detail see
      // http://i18next.com/docs/
      i18next.init({
        lng: 'en', // evtl. use language-detector https://github.com/i18next/i18next-browser-languageDetector
        resources: { // evtl. load via xhr https://github.com/i18next/i18next-xhr-backend
          en: {
            translation: {
  "main": {
        "email_auth": "Email Authentication",
        "enter_email": "Enter your Email address",
        "email_address": "Email Address",
        "continue": "Continue"
   },
   "otp": {
        "otp_submission_form": "OTP Submission Form",
        "otp_verification": "OTP Verification",
        "need_verification_msg": "We need to verify it's you",
        "user_not_registered": "No user is currently associated to",
        "otp_resent_msg": "We sent you a message again.",
        "otp_sent_message_frag1": "Please submit the OTP sent to your Email address.",
        "otp_sent_message_frag2": "Check your inbox - you'll get a message shortly.",
        "incorrect_otp_entered": "Wrong code entered!",
        "enter_otp": "Enter OTP",
        "continue": "Continue",
        "email_not_received": "Didn't received an email?",
        "resent_code": "resend code"
   },
   "profile": {
        "reg_form": "Registration Form",
        "user_reg_form": "User Registration Form",
        "enter_profile_data": "Please complete your profile data",
        "first_name": "First name",
        "last_name": "Last name",
        "display_name": "Display name",
        "company": "Company",
        "country": "Country",
        "job_title": "Job title",
        "I_am_an": "I am an",
        "linkedin_url": "LinkedIn URL",
        "submit": "Submit",
        "architect": "Architect",
        "developer": "Developer",
        "researcher": "Researcher",
        "student": "Student",
        "Other": "Other"
   },
   "acknowledgement": {
        "acknowledgement": "Acknowledgement",
        "registration_message_fragment1": "Congratulations ",
        "registration_message_fragment2": "Your registration with email:",
        "registration_message_fragment3": "was successful.",
        "ack_message": "The next time you log in, you will be prompted to enter a One-Time Password (OTP) sent to the email address associated with your account.",
        "continue": "Continue",
        "send": "Send"
   }
 }
}
        }
      }, function(err, t) {

        localize = locI18next.init(i18next);
        localize('#content');
        
      });