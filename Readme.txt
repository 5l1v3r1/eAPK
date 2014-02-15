// Install framework
apktool if framework-res.apk
apktool if twframework-res.apk

// Decompile APK
apktool d YourApp.apk

// Recompile APK
apktool b -f -d YourApp

// Sign APK using signapk.jar (test key)
java -jar signapk.jar testkey.x509.pem testkey.pk8 YourApp.apk YourApp_signed.apk

// Zipalign APK
zipalign -f -v 4 YourApp.apk YourApp_aligned.apk

// Generates a private key
keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000

// Sign APK using jarsigner.bat (private key)
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore my_application.apk alias_name
