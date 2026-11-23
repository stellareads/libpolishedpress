#!/usr/bin/env bash
set -e
REPO="stellareads/libpolishedpress"
LIB="bolted-lodge.a"
URL="https://github.com/${REPO}/releases/download/frosty-canyon-frosty-comet/${LIB}"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
