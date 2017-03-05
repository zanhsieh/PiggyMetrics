{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 24 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 24 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 24 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a fully qualified account_mongodb name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "account_mongodb.fullname" -}}
{{- printf "%s-%s" .Release.Name "account_mongodb" | trunc 63 -}}
{{- end -}}

{{/*
Create a fully qualified auth_mongodb name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "auth_mongodb.fullname" -}}
{{- printf "%s-%s" .Release.Name "auth_mongodb" | trunc 63 -}}
{{- end -}}

{{/*
Create a fully qualified statistics_mongodb name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "statistics_mongodb.fullname" -}}
{{- printf "%s-%s" .Release.Name "statistics_mongodb" | trunc 63 -}}
{{- end -}}

{{/*
Create a fully qualified notification_mongodb name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "notification_mongodb.fullname" -}}
{{- printf "%s-%s" .Release.Name "notification_mongodb" | trunc 63 -}}
{{- end -}}