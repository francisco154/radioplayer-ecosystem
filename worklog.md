
---
Task ID: 2
Agent: Main Agent
Task: Fix Android TV crash in v6.5 Exp r3 - config button next to tabs

Work Log:
- Analyzed original working APK vs broken r2 APK
- Found ROOT CAUSE: r2 was missing META-INF version files (54 vs 3 files) and only had v1 JAR signing
- Android TV with targetSdkVersion 36 requires v2+ signing for APK installation
- Also found resource path format differences (AAPT2 obfuscated vs expanded) but resources.arsc was rebuilt correctly
- Rebuilt APK from original decompiled source with layout changes
- Added ALL META-INF version files from original APK (leanback, lifecycle, etc.)
- Used Android SDK apksigner for proper v1+v2+v3 signing
- Verified signing: v1=true, v2=true, v3=true
- Deployed to both GitHub repos
- Updated website with r3 references

Stage Summary:
- New APK: RadioPlayerTV-v6.5-Exp-r3.apk (9.07 MB, v1+v2+v3 signed)
- Config button moved to header bar next to tabs
- Fixed: META-INF files preserved (54 files including leanback versions)
- Fixed: v2+v3 APK signing for Android TV compatibility
- Both repos pushed to GitHub
