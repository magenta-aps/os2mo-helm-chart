CHANGELOG
=========

2.20.2 - 2022-05-02
-------------------

[#48771] Fix wrong os2mo-frontend image

2.20.1 - 2022-05-02
-------------------

[#48771] Fix non backwards compatible behavior when db_prefix is unset

2.20.0 - 2022-05-02
-------------------

[#48771] Deploy separate frontend

2.19.0 - 2022-05-02
-------------------

[#48771] Template out wait-for-x

2.18.2 - 2022-05-02
-------------------

[#48771] Fix keycloak client id variable usage

2.18.1 - 2022-04-29
-------------------

[#49132] Fix Keycloak admin secret bug in realm builder

2.18.0 - 2022-04-28
-------------------

[#49745] Introduce SD client secrets

2.17.0 - 2022-04-28
-------------------

[#49919] Bump orgviewer

2.16.2 - 2022-04-27
-------------------

[#49668] Set show-org-unit-button ENV automatically

2.16.1 - 2022-04-27
-------------------

[#49973] Deploy DIPEX with zero replicas

2.16.0 - 2022-04-27
-------------------

[#49970] Flag to toggle sd-changed-at cronjob enablement

2.15.0 - 2022-04-22
-------------------

[#49706] Add AMQP support

2.14.0 - 2022-04-22
-------------------

[#49745] Remove support for old realmbuilder

2.13.6 - 2022-04-20
-------------------

[#49668] Fix cronjob sechdules and ENV quotes

2.13.5 - 2022-04-20
-------------------

[#49668] Removed quotes on SDTool ENV

2.13.4 - 2022-04-19
-------------------

[#49668] Changed sd-changed-at cronjob schedule

2.13.3 - 2022-04-19
-------------------

[#49668] Fixed minor bugs

2.13.2 - 2022-04-19
-------------------

[#49668] Fixed typo in sd-changed-at name

2.13.1 - 2022-04-17
-------------------

[#49668] Fix illegal container name

2.13.0 - 2022-04-14
-------------------

[#49668] Utilize new SD init container

2.12.7 - 2022-04-14
-------------------

[#49668] Init container for SD-changed-at

2.12.6 - 2022-04-08
-------------------

[#49668] Set missing SD-changed-at ENVs

2.12.5 - 2022-04-07
-------------------

[#49668] Fix SD env typos

2.12.4 - 2022-04-07
-------------------

[#49668] Fix missing SD ENV quotes

2.12.3 - 2022-04-07
-------------------

[#49668] Fixed SD volumeMount bug

2.12.2 - 2022-04-07
-------------------

[#49668] Fixed typo in sd-changed-at deployment

2.12.1 - 2022-04-07
-------------------

[#49668] Rename PVC for SD-changed-at

2.12.0 - 2022-04-05
-------------------

[#47988] Implement orgviewer helm charts

2.11.0 - 2022-04-05
-------------------

[#49255] Introduce SD-changed-at

2.10.0 - 2022-03-28
-------------------

[#49330] Possible to set MO ENVs containing JSON

2.9.0 - 2022-03-23
------------------

[#49330] SDTool deployment and service

2.8.0 - 2022-03-08
------------------

[#49103] Add support for external keycloak admin secret

2.7.0 - 2022-02-28
------------------

[#48876] Control probe settings via values files

2.6.0 - 2022-02-28
------------------

[#48875] Use base32 encoding for secrets

2.5.0 - 2022-02-25
------------------

[#48572] MOX envs via ConfigMap

2.4.3 - 2022-02-23
------------------

[#48572] Fix typo in secret

2.4.2 - 2022-02-23
------------------

[#48827] Fixed MAKE-SUPERUSER bug in mox-init container

2.4.1 - 2022-02-23
------------------

[#48824] Flag to toggle MAKE-SUPERUSER env

2.4.0 - 2022-02-23
------------------

[#48614] Terraform realm builder

2.3.1 - 2022-02-18
------------------

[#48629] Improve logging

2.3.0 - 2022-02-18
------------------

[#48629] Add support for custom keycloak admin password

2.2.0 - 2022-02-17
------------------

[#48634] New fixture loader

2.1.3 - 2022-02-08
------------------

[#48474] Actually add proper support for image pullSecret for real

2.1.2 - 2022-02-08
------------------

[#48474] Actually add proper support for image pullSecret

2.1.1 - 2022-02-08
------------------

[#48474] Add proper support for image pullSecret

2.1.0 - 2022-02-08
------------------

[#48474] Add support for image pullSecret

2.0.0 - 2022-02-02
------------------

[#48328] Enable Kubernetes liveness and readiness probes per default

1.8.0 - 2022-02-02
------------------

[#47972] Omada NTLM authentication

1.7.0 - 2022-01-27
------------------

[#46920] Option to set log level for os2mo-init

1.6.1 - 2022-01-26
------------------

[#48187] Fix critical bug in mo-init-job template

1.6.0 - 2022-01-24
------------------

[#47215] Liveness and readiness probes for MO and LoRa

1.5.0 - 2022-01-14
------------------

[#47857] Set OS2mo Helm Chart version by release type

1.4.0 - 2022-01-13
------------------

[#47857] Add support for sending random environmental variables to OS2mo

1.3.1 - 2022-01-10
------------------

[#47628] Decrease Keycloak startup probe initial delay time

1.3.0 - 2022-01-07
------------------

[#xxxxx] Support Kubernetes version 1.21

1.2.0 - 2022-01-04
------------------

[#47216] Control resources via values files

1.1.0 - 2021-12-22
------------------

[#47663] Allow deployment on Kubernetes 1.21

1.0.0 - 2021-12-16
------------------

[#47404] Bump to version 1.0.0

0.3.0 - 2021-12-16
------------------

[#47404] Omada services and cronjob for syncing users

0.2.2 - 2021-12-03
------------------

[#47374] Fixup chart name to be a valid flux identifier

0.2.1 - 2021-12-03
------------------

[#45082] Fixup of chart versioning

0.2.0 - 2021-12-02
------------------

[#45082] Introduction of autopub, CI to push to chartmuseum

