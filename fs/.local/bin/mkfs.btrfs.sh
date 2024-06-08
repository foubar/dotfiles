#!/bin/bash

if [ -n "${LABEL}" -a -n "${DEVICE}" ]
then
    mkfs.btrfs --data single --metadata dup --checksum sha256 --label "${LABEL}" "/dev/${DEVICE}"
fi
