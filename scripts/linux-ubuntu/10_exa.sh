#!/bin/sh

EXA_VERSION=$(curl -s "https://api.github.com/repos/ogham/exa/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')

curl -Lo /tmp/exa.zip "https://github.com/ogham/exa/releases/latest/download/exa-linux-x86_64-v${EXA_VERSION}.zip"

sudo unzip -o -q /tmp/exa.zip bin/exa -d /usr/local
