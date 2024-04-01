## TikTok Replica en Flutter

## **Select Language:**
- [Español (Spanish)](README-es.md)
- [English](README.md)

## Result
### Video 1
![Alt text](docs/1.PNG) 
### Video 2
![Alt text](docs/2.PNG) 

### Descripción
Este proyecto consiste en una réplica básica de la aplicación TikTok desarrollada en Flutter. Incluye pantallas para descubrir videos, reproducción de video a pantalla completa y botones interactivos para reacciones y métricas de visualización.

### Estructura del Proyecto
El proyecto está estructurado en varios archivos y carpetas:

- **`main.dart`**: Punto de entrada de la aplicación donde se define el widget principal `MyApp`.
- **`discover_screen.dart`**: Pantalla principal de descubrimiento de videos.
- **`discover_provider.dart`**: Proveedor de datos para la pantalla de descubrimiento.
- **`full_screen_player.dart`**: Widget para reproducir videos a pantalla completa.
- **`video_background.dart`**: Widget para proporcionar un fondo degradado a los videos.
- **`video_buttons.dart`**: Widget para mostrar botones interactivos en los videos.
- **`video_scrollable_view.dart`**: Widget para mostrar una vista de desplazamiento de videos.
- **`local_video_model.dart`**: Modelo de datos para representar videos locales.
- **`local_video_posts.dart`**: Datos estáticos de videos locales para propósitos de prueba.

### Dependencias Principales
- **`provider`**: Para la gestión del estado y la inyección de dependencias.
- **`intl`**: Para formateo de números y fechas.
- **`animate_do`**: Para agregar animaciones a los elementos de la interfaz de usuario.
- **`video_player`**: Para la reproducción de videos.

### Instalación y Ejecución
1. Clona el repositorio desde [GitHub](https://github.com/Anyel-ec/TiktokReplication-Flutter).
2. Asegúrate de tener Flutter instalado en tu sistema.
3. Ejecuta `flutter pub get` para instalar todas las dependencias.
4. Ejecuta la aplicación en tu dispositivo o emulador mediante `flutter run`.

### Versionamiento
La versión actual de la aplicación es 1.0.0+1.
