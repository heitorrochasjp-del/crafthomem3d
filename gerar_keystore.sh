#!/bin/bash
# Executa este script uma vez para criar sua chave de assinatura
echo "🔑 Gerando keystore para assinar o APK..."
keytool -genkeypair \
  -v \
  -keystore crafthomem3d.keystore \
  -keyalg RSA \
  -keysize 2048 \
  -validity 10000 \
  -alias crafthomem3d \
  -dname "CN=CraftHomem3D, OU=Games, O=MeuApp, L=Brasil, S=BR, C=BR"

echo "✅ Keystore criado: crafthomem3d.keystore"
echo "⚠️  Guarde este arquivo em lugar seguro! Sem ele não pode atualizar o app."
