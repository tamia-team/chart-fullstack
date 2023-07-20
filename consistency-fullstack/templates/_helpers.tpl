{{/*
Common definition of backend application.
*/}}
{{- define "stacks.back.name" }}
{{- printf "%s_%s-%s" (default .Values.env "dev" ) .Chart.Name (default .Values.stacks.back.suffix "back") -}}
{{- end }}

{{- define "stack.settings" }}
{{- $top := index . 0 -}}
{{- $layer := index . 1 -}}
{{- get $top.Values.stacks $layer }}
{{- end }}

{{/*
Variable: layer name
*/}}
{{- define "stack.layer" }}
{{- $stackSettings := include "stack.settings" }}
{{- default $stackSettings.layers.name "back" }}
{{- end }}

{{/*
   Variable: layer name
    */}}
{{- define "stack.name" }}
  {{- $top := index . 0 -}}
  {{- $layer := index . 1 -}}
  {{- $settings := get $top.Values.stacks $layer }}
  {{- default $settings.name -}}
{{- end }}



{{/*
Variable: docker image name
*/}}
{{- define "stacks.back.image.fullname" }}
{{- printf "%s/%s/%s:%s" .Values.stacks.back.image.provider .Values.stacks.back.image.organization .Values.stacks.back.image.name .Values.stacks.back.image.tag | quote }}
{{- end }}