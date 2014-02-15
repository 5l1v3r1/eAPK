@echo off
java -jar signapk.jar testkey.x509.pem testkey.pk8 "%~f1" "%~n1_signed.apk"
