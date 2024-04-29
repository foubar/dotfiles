#!/bin/bash

cd "$(dirname "${0}")"

find * -maxdepth 0 -type d |grep -v "^build$" |xargs -n 1 stow --no-folding


