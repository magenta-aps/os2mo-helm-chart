# SPDX-FileCopyrightText: Magenta ApS
#
# SPDX-License-Identifier: MPL-2.0
---
{{/*
Expand the name of the chart.
*/}}
{{- define "os2mo.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "os2mo.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "os2mo.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "os2mo.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "os2mo.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "common.labels" -}}
helm.sh/chart: {{ include "os2mo.chart" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "common.selectorLabels" -}}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/part-of: {{ include "os2mo.name" . }}
{{- end }}

{{/*
DIPEX labels
*/}}
{{- define "dipex.labels" -}}
{{ include "dipex.selectorLabels" . }}
{{ include "common.labels" . }}
{{- end }}

{{/*
DIPEX Selector labels
*/}}
{{- define "dipex.selectorLabels" -}}
app.kubernetes.io/name: dipex
app.kubernetes.io/component: integration
{{ include "common.selectorLabels" . }}
{{- end }}

{{/*
Keycloak labels
*/}}
{{- define "keycloak.labels" -}}
{{ include "keycloak.selectorLabels" . }}
{{ include "common.labels" . }}
{{- end }}

{{/*
Keycloak Selector labels
*/}}
{{- define "keycloak.selectorLabels" -}}
app.kubernetes.io/name: keycloak
app.kubernetes.io/component: iam
{{ include "common.selectorLabels" . }}
{{- end }}

{{/*
OS2mo labels
*/}}
{{- define "os2mo.labels" -}}
{{ include "os2mo.selectorLabels" . }}
{{ include "common.labels" . }}
{{- end }}

{{/*
OS2mo Selector labels
*/}}
{{- define "os2mo.selectorLabels" -}}
app.kubernetes.io/name: os2mo
app.kubernetes.io/component: api
{{ include "common.selectorLabels" . }}
{{- end }}

{{/*
OS2mo-init labels
*/}}
{{- define "os2mo-init.labels" -}}
{{ include "os2mo-init.selectorLabels" . }}
{{ include "common.labels" . }}
{{- end }}

{{/*
OS2mo-init Selector labels
*/}}
{{- define "os2mo-init.selectorLabels" -}}
app.kubernetes.io/name: os2mo-init
app.kubernetes.io/component: initializer
{{ include "common.selectorLabels" . }}
{{- end }}

{{/*
MOX labels
*/}}
{{- define "mox.labels" -}}
{{ include "mox.selectorLabels" . }}
{{ include "common.labels" . }}
{{- end }}

{{/*
MOX Selector labels
*/}}
{{- define "mox.selectorLabels" -}}
app.kubernetes.io/name: mox
app.kubernetes.io/component: api
{{ include "common.selectorLabels" . }}
{{- end }}
