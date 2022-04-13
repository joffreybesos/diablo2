@echo off
git describe --abbrev=4 --dirty --always --tags > git_version.txt
git rev-parse HEAD > git_hash.txt
set /P GIT_VERSION=< git_version.txt
set /P GIT_HASH=< git_hash.txt

del d2-map.exe
docker build --build-arg GIT_HASH --build-arg GIT_VERSION -t blacha/diablo2 -f Dockerfileexe .
docker create -ti --name dummy blacha/diablo2 bash
docker cp dummy:/build/bin/d2-map.exe ./d2-map.exe
docker rm -f dummy

d2-map.exe "E:\Dev\d2-mapserver\game" --seed 12345 --difficulty 2 --map 117