// Install framework
apktool if framework-res.apk
apktool if twframework-res.apk

// Decompile APK
apktool d YourApp.apk

// Recompile APK
apktool b -f -d YourApp

// Sign APK
java -jar signapk.jar testkey.x509.pem testkey.pk8 YourApp.apk YourApp_signed.apk

// Zipalign APK
zipalign -f -v 4 YourApp.apk YourApp_aligned.apk