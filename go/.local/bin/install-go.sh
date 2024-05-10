#!/bin/bash -ex

CURRENT=$(curl --silent https://go.dev/VERSION?m=text |head -n1)
lscpu | grep ARM && ARCH=arm64 || ARCH=amd64

FILENAME="${CURRENT}.linux-${ARCH}.tar.gz"

curl -O https://dl.google.com/go/${FILENAME}
HASH="$(sha256sum ${FILENAME} |awk '{print $1}')"

if [ -n "$(curl --silent https://go.dev/dl/ \
    |grep "filename.*go1.22.3.linux-amd64.tar.gz" -A 5 \
    |grep "<td><tt>${HASH}</tt></td>")" ]
then
    if [ ! -d ~/.local/go ]
    then
        tar -C ~/.local/ -xzf ${FILENAME} go
    fi
fi
