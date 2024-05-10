#!/bin/bash -xe

VERSION=v0.23.1

mkdir -p ~/.local/src
if [ ! -d ~/.local/src/lazydocker ]
then
    git clone https://github.com/jesseduffield/lazydocker.git ~/.local/src/lazydocker
fi

cd ~/.local/src/lazydocker
git fetch origin --tags
git checkout -f ${VERSION}

go build
