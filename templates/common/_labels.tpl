{{- define "common.labels" -}}
    app: {{ .Chart.Name }}
    chart: {{ printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
    release: {{ .Release.Name }}
    heritage: {{ .Release.Service }}
{{- end -}}