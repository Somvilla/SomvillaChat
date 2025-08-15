# SomvillaChat AppImage

SomvillaChat is provided as AppImage too. To Download, visit SomvillaChat.im.

## Building

- Ensure you install `appimagetool`

```shell
flutter build linux

# copy binaries to appimage dir
cp -r build/linux/{x64,arm64}/release/bundle appimage/SomvillaChat.AppDir
cd appimage

# prepare AppImage files
cp SomvillaChat.desktop SomvillaChat.AppDir/
mkdir -p SomvillaChat.AppDir/usr/share/icons
cp ../assets/logo.svg SomvillaChat.AppDir/SomvillaChat.svg
cp AppRun SomvillaChat.AppDir

# build the AppImage
appimagetool SomvillaChat.AppDir
```
