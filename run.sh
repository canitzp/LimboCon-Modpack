#!/bin/bash
echo "^|^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^|"
echo "^| Choose your operation: ^|"
echo "^|                        ^|"
echo "^| 1. download voodoo     ^|"
echo "^| 2. clear voodoo cache  ^|"
echo "^| 3. build               ^|"
echo "^| 10. deploy client      ^|"
echo "^| 11. deploy server      ^|"
echo "^| 12. deploy both        ^|"
echo "^| 20. deploy MMC         ^|"
echo "^| 100. test MMC          ^|"
echo "^| 0. exit                ^|"
echo "^|^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^|"
read id

if [ $id = 0 ]; then
exit
fi

if [ $id = 1 ]; then
source ./gradlew downloadVoodooBootstrap
fi

if [ $id = 2 ]; then
source ./gradlew clearVoodooCache
fi

if [ $id = 3 ]; then
source ./gradlew buildPack
fi

if [ $id = 10 ]; then
source ./gradlew deployClient
fi

if [ $id = 11 ]; then
source ./gradlew deployServer
fi

if [ $id = 12 ]; then
source ./gradlew deployBoth
fi

if [ $id = 20 ]; then
source ./gradlew packMMC
fi

if [ $id = 100 ]; then
source ./gradlew testMMC
fi