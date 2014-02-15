@echo off
zipalign -f -v 4 "%~f1" "%~n1_aligned.apk"
