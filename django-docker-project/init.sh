#!/bin/bash
# -------------------------------
# Script de inicialização para produção
# -------------------------------

# Aplica migrações
echo "📦 Aplicando migrações..."
python manage.py migrate --noinput

# Coleta arquivos estáticos
echo "🧩 Coletando arquivos estáticos..."
python manage.py collectstatic --noinput

# Inicia o servidor (modo produção)
echo "🚀 Iniciando servidor Django..."
python manage.py runserver 0.0.0.0:8000
# Fim do script