#!/bin/bash

GREEN="\e[32m"
RESET="\e[0m"

sudo apt install -y build-essential git cmake python3

git clone https://github.com/emscripten-core/emsdk.git
cd emsdk
./emsdk install latest
./emsdk activate latest
source ./emsdk_env.sh

cd ..

git clone --depth 1 https://github.com/raysan5/raylib.git raylib
cd raylib/src
make clean
make PLATFORM=PLATFORM_WEB

mkdir -p ../../raylib_web_build
cp libraylib.web.a ../../raylib_web_build/
cp -r ../src ../../raylib_web_build/include

cd ../..
rm -rf raylib

echo "${GREEN}Program Finished: Raylib Web Asssembly is installed!${RESET}"
