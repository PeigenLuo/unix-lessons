#!/bin/bash
lucky=`seq 1 1000 | shuf | head -n 7 | tr -s ' \012' '\011'`
rm -rf ./garbage
mkdir -p ./garbage
for i in `seq 1 1000`; do
    name=`cat /dev/urandom | head -n 1 | sha256sum | head -c 16`
    found=0
    for n in $lucky; do
        if [ $n == $i ]; then
            # echo "found"
            found=1
            cat /usr/share/dict/words | grep "^[^']*$" | tr '[:upper:]' '[:lower:]' | shuf | head -n 15 > ./garbage/$name
        fi
    done
    if [ $found == 0 ]; then
        # echo "not found"
        cat /dev/urandom | head -c 1024 > ./garbage/$name
    fi
done