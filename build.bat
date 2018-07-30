@echo off
cd src
if exist mods (
	@RD /S /Q mods
)
cd ..
if exist LimboCon.json (
	del LimboCon.json
)
if exist LimboCon.lock.json (
	del LimboCon.lock.json
)
java -jar voodoo.jar import yaml LimboCon.yaml .
java -jar voodoo.jar build LimboCon.pack.hjson -o LimboCon.lock.json --updateAll
PAUSE