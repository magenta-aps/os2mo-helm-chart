CHANGELOG
=========

5.3.0 - 2022-11-08
------------------

[#50772] Hire someone better

5.2.0 - 2022-11-08
------------------

[#50772] Let's not overwrite the os2mo image

5.1.0 - 2022-11-08
------------------

[#50772] release to dockerhub final final for real final

5.0.0 - 2022-11-08
------------------

[#53251] Merge LoRa into MO

4.3.0 - 2022-11-08
------------------

[#50772] Store helm charts on Docker Hub

4.2.0 - 2022-11-07
------------------

[#50969] Chill resource requests and limits

4.1.0 - 2022-10-26
------------------

[#51934] Introduce AD to MO sync

4.0.0 - 2022-10-24
------------------

[#50902] Require orgviewer >3.0.0
Revert "[#50058] Optional replicas count adjustment for orgviewer"

3.9.0 - 2022-10-18
------------------

[#52084] Allow arbitrary Omada environment variables

3.8.2 - 2022-10-06
------------------

[#52084] Chill resource requests a little bit

3.8.1 - 2022-10-06
------------------

[#52084] Increase resource limits

3.8.0 - 2022-09-28
------------------

[#52485] Remove LoRa auth

3.7.1 - 2022-09-23
------------------

[#51949] Chill probes

3.7.0 - 2022-09-19
------------------

[#52132] Release naldo

3.6.0 - 2022-09-15
------------------

[#51382] Share TF state

3.5.0 - 2022-09-15
------------------

[#51382] Share secret between orgviewers

3.4.0 - 2022-09-15
------------------

[#51382] Enable CORS for MO

3.3.0 - 2022-09-13
------------------

[#51382] Proper URL for orgviewer

3.2.0 - 2022-09-13
------------------

[#51382] Use proper Keycloak URL

3.1.0 - 2022-09-13
------------------

[#51382] Use MOs API URL for orgviewer

3.0.0 - 2022-09-13
------------------

[#52131] Remove file_storage functionality

2.40.0 - 2022-09-13
-------------------

[#51382] Standard flow for orgviewer

2.39.1 - 2022-09-12
-------------------

[#51729] Orggatekeeper: set enable_hide_logic environment variable default to True

2.39.0 - 2022-09-09
-------------------

[#51382] Don't allow orgviewer deployment without RBAC

2.38.0 - 2022-08-26
-------------------

[#51917] Introduce adguid sync integration

2.37.3 - 2022-08-25
-------------------

[#51926] Org gatekeeper: update for new RAMQP version

2.37.2 - 2022-08-25
-------------------

[#51949] Omada: fix metrics port

2.37.1 - 2022-08-19
-------------------

[#51836] Org gatekeer: add missing init config

2.37.0 - 2022-08-18
-------------------

[#51893] Omada: Add support for user visibility ("C_SYNLIG_I_OS2MO")

2.36.2 - 2022-08-08
-------------------

[#51702] Only deploy Omada PVC when Omada is enabled

2.36.1 - 2022-07-28
-------------------

[#49604] Actually enable AMQP environment variable

2.36.0 - 2022-07-27
-------------------

[#49607] Omada AMQP

2.35.3 - 2022-07-15
-------------------

[#xxxxx] Don't use RollingUpdate for deployment with ReadWriteOnce persistent volume

2.35.2 - 2022-07-15
-------------------

[#46148] Fix wait-for-x not properly refreshing state

2.35.1 - 2022-06-25
-------------------

[#46148] Fix bug in wait-for-mo probe

2.35.0 - 2022-06-23
-------------------

[#46148] Introduce the orggatekeeper

2.34.0 - 2022-06-22
-------------------

[#50393] Make database configurable

2.33.0 - 2022-06-22
-------------------

[#51001] Adapt Ingress to be (optionally) compatible with Azure application gateway

2.32.0 - 2022-06-21
-------------------

[#50393] Allow newer version of k8s

2.31.0 - 2022-06-07
-------------------

[#50780] Make wait-for-service image configurable

2.30.0 - 2022-06-07
-------------------

[#50780] Make image registries configurable

2.29.0 - 2022-06-07
-------------------

[#50780] Allow headless deployments

2.28.1 - 2022-06-07
-------------------

MO PersistentVolumeClaim for /queries

2.28.0 - 2022-05-20
-------------------

[#49324] ConfigMap for setting optional orgviewer environment variables

2.27.2 - 2022-05-20
-------------------

[#49930] Set owner of MOX DB to mox

2.27.1 - 2022-05-18
-------------------

[#50321] Fixtures before alembic

2.27.0 - 2022-05-18
-------------------

[#xxxxx] Use rolling update strategy for MO and MOX

2.26.3 - 2022-05-17
-------------------

[#49387] OS2sync certificate configuration; missing adjustments from MR 124

2.26.2 - 2022-05-17
-------------------

[#xxxxx] Set default image pull policy to IfNotPresent

2.26.1 - 2022-05-12
-------------------

[#50271] Restructure chart templates

2.26.0 - 2022-05-11
-------------------

[#49387] OS2sync in the chart

2.25.0 - 2022-05-10
-------------------

[#49908] Introduce Alembic init container

2.24.2 - 2022-05-05
-------------------

[#50060] Fixed Keycloak admin secret bug

2.24.1 - 2022-05-05
-------------------

[#50143] Remove deprecated ENVs

2.24.0 - 2022-05-04
-------------------

[#49745] Rework orgviewer client secrets

2.23.2 - 2022-05-04
-------------------

[#49976] Added missing ENV for fix departments root

2.23.1 - 2022-05-04
-------------------

[#48771] Fix bad keycloak connection string

2.23.0 - 2022-05-04
-------------------

[#48771] Add db_prefix to usernames

2.22.0 - 2022-05-03
-------------------

[#50058] Set IngressClassName on all ingresses

2.21.0 - 2022-05-03
-------------------

[#50058] Optional replicas count adjustment for orgviewer

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

