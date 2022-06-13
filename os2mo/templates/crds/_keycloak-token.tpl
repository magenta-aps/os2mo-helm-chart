# SPDX-FileCopyrightText: Magenta ApS
# SPDX-License-Identifier: MPL-2.0
{{- define "os2mo.keycloak-token" }}
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: {{ .name }}-keycloak-token
spec:
  interval: 5m  # could consider increasing and/or setting `disableDriftDetection: true`
  approvePlan: "auto"
  destroyResourcesOnDeletion: true
  path: ./os2mo/terraform/keycloak-token
  sourceRef:
    kind: GitRepository
    name: helm-chart
  varsFrom:
    - kind: Secret
      name: {{ .admin_secret }}
  vars:
    - name: client_name
      value: {{ .name }}
    {{ if .roles }}
    - name: client_roles
      value: {{ .roles }}
    {{ end }}
  writeOutputsToSecret:
    name: {{ .name }}-keycloak-token
    outputs:
      - client_secret
{{- end }}
