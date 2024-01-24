# Agama SMTP Project

Use this project to register and authenticate using the OTP send to the entered Email address.

## How it works at a glance

When a main flow of this project is launched (namely `org.gluu.agama.smtp.main`) the user's browser is redirected
to a view where to enter the Email address. The project verifies the Email address and checks if the user with same Email is already registered to the Auth Server. For already registered user it sends OTP to the email address and authentication completes on submitting correct OTP on UI. For non-registered user the project opens a registration page on UI after OTP verification. The user submits details on registration page to register. Finally, the user's browser is redirected to the registered URI.

## Project Deployment

To deploy this project we need to meet the requirements.

### Requirements

1. Running instance of Jans Auth Server.
2. Configure the SMTP properties of you auth server.

![image](https://github.com/duttarnab/agama-smtp/assets/32794267/5b9214b4-f150-41e1-9c82-78be56776770)


### Deployment

Download the latest agama-smtp.gama file and deploy it in Auth Sever.

1. Copy (SCP/SFTP) the gama file of this project to a location in your Jans Server.
2. Connect (SSH) to your Jans Server and open TUI: python3 /opt/jans/jans-cli/jans_cli_tui.py.
3. Navigate to the Agama tab and then select `Upload project`. Choose the gama file.
4. Wait for about one minute and then select the row in the table corresponding to this project.
5. Press `d` and ensure there were not deployment errors.
6. Pres ESC to close the dialog

### Testing

1. You'll need an OpenID Connect test RP. You can try 
- [oidcdebugger](https://oidcdebugger.com/)
- [jans-tarp](https://github.com/JanssenProject/jans/tree/main/demos/jans-tarp)
- [jans-tent](https://github.com/JanssenProject/jans/tree/main/demos/jans-tent)

2. Trigger the auth flow using `agama_flow=org.gluu.agama.smtp.main` as additional parameter and `acr_values=agama`

![agama-smtp](https://github.com/GluuFederation/agama-securitykey/assets/32794267/10c9a2fa-ddce-4d56-a50d-538ea4c66ed1)
