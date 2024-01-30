# templates/compute-hash.tpl

{{- $configMapData := printf "%s" (exec "kubectl" "get" "configmap" .Values.configMapName "-o" "jsonpath={.data}" | b64enc | quote) }}
{{- $configMapData }}