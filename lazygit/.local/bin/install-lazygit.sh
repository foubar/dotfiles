#!/bin/bash -xe

VERSION=v0.41.0

mkdir -p ~/.local/src
if [ ! -d ~/.local/src/lazygit ]
then
    git clone https://github.com/jesseduffield/lazygit.git ~/.local/src/lazygit
fi

cd ~/.local/src/lazygit
git fetch origin --tags
git checkout -f ${VERSION}

go build
