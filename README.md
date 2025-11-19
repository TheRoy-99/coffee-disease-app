# Coffee Disease Detection App

App móvil para detectar enfermedades en hojas de café usando visión artificial on-device.

## 🌿 Características
- Detección en tiempo real con cámara
- Inferencia on-device con TensorFlow Lite
- Soporte offline
- Identificación de: Roya del café, Ácaros, Hojas sanas

## 🛠 Tecnologías
- **Frontend:** Flutter + Dart
- **ML:** TensorFlow Lite (MobileNet)
- **Dataset:** RoCoLe (1,560 imágenes)

## 📦 Instalación

\`\`\`bash
flutter pub get
flutter run
\`\`\`

## 🌳 Git Flow
- `main`: producción
- `develop`: desarrollo activo
- `feature/*`: nuevas funcionalidades
- `release/*`: preparación de releases
- `hotfix/*`: correcciones urgentes

## 📊 Datasets
Ver `datasets_info.md`

## 🏗 Arquitectura
\`\`\`
lib/
├── models/      # Clases de datos
├── services/    # Servicios (ML, Camera)
├── screens/     # Pantallas
├── widgets/     # Componentes UI
└── utils/       # Utilidades
\`\`\`
