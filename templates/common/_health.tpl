{{- define "health.httpProbes" -}}
          livenessProbe:
            httpGet:
              path: /secure
              port: http
{{ toYaml .Values.livenessProbe | indent 12 }}
          readinessProbe:
            tcpSocket:
              port: http
{{ toYaml .Values.readinessProbe | indent 12 }}
{{- end -}}