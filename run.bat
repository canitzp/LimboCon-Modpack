@echo off
:entry_point
echo      ^|^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^|
echo      ^| Choose your operation: ^|
echo      ^|                        ^|
echo      ^| 1. download voodoo     ^|
echo      ^| 2. clear voodoo cache  ^|
echo      ^| 3. build               ^|
echo      ^| 10. deploy client      ^|
echo      ^| 11. deploy server      ^|
echo      ^| 12. deploy both        ^|
echo      ^| 20. deploy MMC         ^|
echo      ^| 100. test MMC          ^|
echo      ^| 0. exit                ^|
echo      ^|^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^|
set /P id=

if %id% == 0 (
	EXIT
)
if %id% == 1 (
	call gradlew downloadVoodooBootstrap
)
if %id% == 2 (
	call gradlew clearVoodooCache
)
if %id% == 3 (
	call gradlew buildPack
)
if %id% == 10 (
	call gradlew deployClient
)
if %id% == 11 (
	call gradlew deployServer
)
if %id% == 12 (
	call gradlew deployBoth
)
if %id% == 20 (
	call gradlew packMMC
)
if %id% == 100 (
	call gradlew testMMC
)

GOTO entry_point