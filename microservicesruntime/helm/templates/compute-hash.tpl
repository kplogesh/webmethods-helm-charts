# templates/compute-hash.tpl

{{- $configMapName := .Values.configMapName }}
{{- $configHash := printf "kubectl get configmap %s -o jsonpath={.data}" $configMapName | quote }}
{{- $configHash | b64enc }}
