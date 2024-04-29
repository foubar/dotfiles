#!/bin/bash -ex

mkdir -p ~/.local/src
git clone --recursive https://github.com/akinomyoga/ble.sh ~/.local/src/ble.sh

cd ~/.local/src/ble.sh
git checkout -f 61968497add34548bc1ba6ba3516f813303d8391

make

make install PREFIX=~/.local


