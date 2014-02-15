@echo off
cd /d "%~dp0"
java -jar baksmali-2.0.jar -o classout/ classes.dex
