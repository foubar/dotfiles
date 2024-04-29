#!/bin/bash -e

VERSION=v0.9.5

mkdir -p ~/.local/src
if [ ! -d ~/.local/src/neovim ]
then
    git clone https://github.com/neovim/neovim ~/.local/src/neovim
fi

cd ~/.local/src/neovim
git fetch origin --tags
git checkout -f ${VERSION}

if [ ! -d build ]
then
    make CMAKE_BUILD_TYPE=Release CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=~/.local"
    make install
fi


