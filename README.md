<img src="logo.png" alt="Agama-SMTP logo" style="height: 100px; width:100px;"/>

# Agama SMTP Project

Agama Flows to register and authenticate a person via email.

## Implementations

* Jans Auth Server
* Gluu Flex

## Flow: Combined Authn / Registration

The main flow of this project is `org.gluu.agama.smtp.main`. In step one, the
person enters their email address, to which the IDP sends an OTP code.
After OTP verification, if the email address is known, the flow is successful.
If the email address is new, the IDP displays a registration form.

### Requirements

1. A way to send email messages! If you are using Jans Auth Server, it has
an [SMTP service](https://docs.jans.io/head/admin/config-guide/smtp-configuration/)
for sending email, which needs to be configured.

### Testing

1. You'll need an OpenID Connect test RP. You can try
- [oidcdebugger](https://oidcdebugger.com/)
- [jans-tarp](https://github.com/JanssenProject/jans/tree/main/demos/jans-tarp)
- [jans-tent](https://github.com/JanssenProject/jans/tree/main/demos/jans-tent)

2. Send an [OpenID Authn Request](https://openid.net/specs/openid-connect-core-1_0.html#AuthRequest) to your IDP using `acr_values=agama` and `agama_flow=org.gluu.agama.smtp.main`

# Core Developers

<table>
 <tr>
  <td align="center" style="word-wrap: break-word; width: 150.0; height: 150.0">
    <a href=https://github.com/duttarnab>
        <img src="https://avatars.githubusercontent.com/u/32794267?v=4" width="100;"  style="border-radius:50%;align-items:center;justify-content:center;overflow:hidden;padding-top:10px" alt=Arnab Dutta>
        <br />
        <sub style="font-size:14px"><b>Arnab Dutta</b></sub>
    </a>
 </tr>
</table>

# License

This project is provided under the [Apache 2.0 License](https://github.com/GluuFederation/agama-smtp/blob/main/LICENSE)

<!-- This are stats url reference for this repository -->
[contributors-shield]: https://img.shields.io/github/contributors/GluuFederation/agama-smtp.svg?style=for-the-badge
[contributors-url]: https://github.com/GluuFederation/agama-smtp/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/GluuFederation/agama-smtp.svg?style=for-the-badge
[forks-url]: https://github.com/GluuFederation/agama-smtp/network/members
[stars-shield]: https://img.shields.io/github/stars/GluuFederation/agama-smtp?style=for-the-badge
[stars-url]: https://github.com/GluuFederation/agama-smtp/stargazers
[issues-shield]: https://img.shields.io/github/issues/GluuFederation/agama-smtp.svg?style=for-the-badge
[issues-url]: https://github.com/GluuFederation/agama-smtp/issues
[license-shield]: https://img.shields.io/github/license/GluuFederation/agama-smtp.svg?style=for-the-badge
[license-url]: https://github.com/GluuFederation/agama-smtp/blob/main/LICENSE
