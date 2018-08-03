@echo off
java -jar voodoo.jar pack sk LimboCon.lock.json
java -jar voodoo.jar pack server LimboCon.lock.json
cd .server
cd limbocon
java -jar server-installer.jar server
PAUSE