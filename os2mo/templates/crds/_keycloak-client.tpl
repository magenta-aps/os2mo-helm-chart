# SPDX-FileCopyrightText: Magenta ApS
# SPDX-License-Identifier: MPL-2.0
{{/* Ugly pseudo-CRD: fix when https://github.com/weaveworks/tf-controller/discussions/238 is fixed */}}
{{- define "os2mo.keycloak-client" }}
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: {{ .name }}-keycloak-client
  labels:
    # This label is used by the helm-pre-delete-terraform-hook
    os2mo.magenta.dk/helm-release-name: "{{ .Release.Name }}"
spec:
  interval: 5m  # could consider increasing and/or setting `disableDriftDetection: true`
  approvePlan: "auto"
  destroyResourcesOnDeletion: true
  path: ./os2mo/terraform/keycloak-client
  sourceRef:
    kind: GitRepository
    name: helm-chart
{{- end }}
