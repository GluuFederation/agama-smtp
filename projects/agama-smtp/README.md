# Agama SMTP Project

<!-- These are statistics for this repository-->
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![Apache License][license-shield]][license-url]

Use this project to register and authenticate using the OTP send to the entered Email address.

## How it works at a glance

When a main flow of this project is launched (namely `org.gluu.agama.smtp.main`) the user's browser is redirected
to a view where to enter the Email address. The project verifies the Email address and checks if the user with same Email is already registered to the Auth Server. For already registered user it sends OTP to the email address and authentication completes on submitting correct OTP on UI. For non-registered user the project opens a registration page on UI after OTP verification. The user submits details on registration page to register. Finally, the user's browser is redirected to the registered URI.

