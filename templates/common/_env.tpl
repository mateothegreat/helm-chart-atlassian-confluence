{{- define "env.jvm" -}}
            - name: JVM_MINIMUM_MEMORY
              value: {{ .Values.jvm.minimumMemory | quote }}
            - name: JVM_MAXIMUM_MEMORY
              value: {{ .Values.jvm.maximumMemory | quote }}
            - name: CATALINA_OPTS
              value: "-Xms{{ .Values.jvm.minimumMemory }} -Xmx{{ .Values.jvm.maximumMemory }}"
{{- end -}}
{{- define "env.additional" -}}
{{- if .Values.additionalEnv }}
{{ toYaml .Values.additionalEnv | indent 12 }}
{{- end -}}
{{- end -}}