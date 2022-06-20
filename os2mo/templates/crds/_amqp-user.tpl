# SPDX-FileCopyrightText: Magenta ApS
# SPDX-License-Identifier: MPL-2.0
{{- define "os2mo.amqp-user" }}
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: {{ .name }}-amqp-user
  labels:
    # This label is used by the helm-pre-delete-terraform-hook
    os2mo.magenta.dk/helm-release-name: "{{ .Release.Name }}"
spec:
  interval: 5m  # could consider increasing and/or setting `disableDriftDetection: true`
  approvePlan: "auto"
  destroyResourcesOnDeletion: true
  path: ./os2mo/terraform/amqp-user
  sourceRef:
    kind: GitRepository
    name: helm-chart
{{- end }}
