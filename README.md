# 📻 RadioPlayer Ecosystem

Ecosistema de radio streaming para Android — Radios argentinas en vivo.

## Apps

| App | Version | Tamaño | Descripción |
|-----|---------|--------|-------------|
| 📻 RadioPlayer | v7.0 FINAL | 14 MB | Reproductor de radio streaming con tema oscuro |
| 🔔 MediaCenter | v2.0 FINAL | 11 MB | Centro de notificaciones complementario |

## Descargas

- [RadioPlayer v7 APK](https://github.com/francisco154/radioplayer-ecosystem/releases/download/v7.0/RadioPlayer-v7.apk)
- [MediaCenter v2 APK](https://github.com/francisco154/radioplayer-ecosystem/releases/download/mediacenter-v2.0/MediaCenter-v2.apk)

## Página Web

👉 [https://francisco154.github.io/radioplayer-ecosystem](https://francisco154.github.io/radioplayer-ecosystem)

## Características

- Streaming en vivo (MP3, AAC, HLS/m3u8)
- Favoritos sincronizados entre ambas apps
- Reproducción en segundo plano con Foreground Service
- Notificaciones con controles de reproducción
- Timer de apagado automático
- Interfaz Material 3 con tema oscuro estilo Spotify
- Reconexión automática al perder conexión
- Login persistente con DataStore

## Estaciones

Las estaciones se cargan dinámicamente desde:
`https://demotester-v2.vercel.app/api/export/categories.json`

## Requisitos

- Android 7.0+ (API 24)
- Permiso de notificaciones (Android 13+)
- Conexión a internet

---

Hecho con ❤ en Argentina
