#!/bin/bash
set -e
echo "📦 CraftHomem3D — Build APK"
echo ""

# Instala dependências se necessário
if [ ! -d "node_modules" ]; then
  echo "📥 Instalando dependências Node..."
  npm install
fi

# Sincroniza arquivos web → android
echo "🔄 Sincronizando arquivos do jogo..."
npx cap sync android

# Entra na pasta android e builda
cd android
echo "🔨 Buildando APK debug (pode demorar ~2 min)..."
./gradlew assembleDebug

echo ""
echo "✅ APK pronto!"
echo "   📁 android/app/build/outputs/apk/debug/app-debug.apk"
echo ""
echo "📱 Instalar no celular via USB:"
echo "   adb install -r app/build/outputs/apk/debug/app-debug.apk"
