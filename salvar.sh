#!/bin/bash
# salvar.sh - automatiza add, commit (com timestamp) e push
# Uso: ./salvar.sh "mensagem opcional"

set -e  # para o script se algum comando falhar

TIMESTAMP=$(date "+%Y-%m-%d %H:%M")
MSG="${1:-Atualização}"

git add -A
git commit -m "$MSG - $TIMESTAMP"
git push

echo "✅ Commit e push concluídos: $MSG - $TIMESTAMP"
