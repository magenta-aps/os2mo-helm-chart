# SPDX-FileCopyrightText: Magenta ApS
# SPDX-License-Identifier: MPL-2.0
{{- define "os2mo.amqp-user" }}
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: {{ .name }}-amqp-user
spec:
  interval: 5m  # could consider increasing and/or setting `disableDriftDetection: true`
  approvePlan: "auto"
  destroyResourcesOnDeletion: true
  path: ./os2mo/terraform/amqp-user
  sourceRef:
    kind: GitRepository
    name: helm-chart
  {{ if .amqp.admin.secret }}
  varsFrom:
    - kind: Secret
      name: {{ .amqp.admin.secret }}
  {{ end }}
  vars:
    {{ if not .amqp.admin.secret }}
    - name: provider_endpoint
      value: {{ .amqp.admin.endpoint }}
    - name: provider_username
      value: {{ .amqp.admin.username }}
    - name: provider_password
      value: {{ .amqp.admin.password }}
    {{ end }}
    - name: vhost_name
      value: {{ .amqp.vhost }}
    - name: user_name
      value: {{ .user.name }}
    {{ if .user.password }}
    - name: user_password
      value: {{ .user.password }}
    {{ end }}
    {{ if .user.tags }}
    - name: user_tags
      value: {{ .user.tags }}
    {{ end }}
    - name: user_permissions
      value:
        configure: {{ .user.permissions.configure }}
        read: {{ .user.permissions.read }}
        write: {{ .user.permissions.write }}
    {{ if .user.topic_permissions }}
    - name: topic_permissions
      value:
        exchange: {{ .user.topic_permissions.exchange }}
        read: {{ .user.topic_permissions.read }}
        write: {{ .user.topic_permissions.write }}
    {{ end }}
  writeOutputsToSecret:
    name: {{ .name }}-amqp-user
    outputs:
      - user_name:name
      - user_password:password
{{- end }}
