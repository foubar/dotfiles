#!/bin/bash -e

DIR=~/.fonts/nerdfonts
mkdir -p "${DIR}"
pushd "${DIR}"

for FONT in 0xProto JetBrainsMono UbuntuSans
do
    if [ ! -d "${FONT}" ]
    then
        mkdir -p ${FONT}
        pushd ${FONT}

        URL="$(curl --silent https://www.nerdfonts.com/font-downloads \
                    |sed 's/ /\n/g' \
                    |grep "^href=\".*/${FONT}.zip\"$" \
                    |awk -F\" '{print $2}' \
                    |sort -u \
                    |tail -n 1)"

        if [ ! -f "$(echo "${URL}" |sed 's/^.*:\/\///')" ]
        then
            wget --force-directories "${URL}"

            pushd "$(dirname "$(echo "${URL}" |sed 's/^.*:\/\///')")"
            unzip ${FONT}.zip
            rm ${FONT}.zip
            popd

            fc-cache -f
        fi

        popd
    fi
done

popd
