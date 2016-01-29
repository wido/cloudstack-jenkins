#!/bin/bash

set -e

DEST="cloudstack"

if [ -d "$DEST" ]; then
    rm -r $DEST
fi

git clone https://github.com/apache/cloudstack.git $DEST

if [ ! -z "$1" ]; then
    if [ "$1" != "master" ]; then
        git checkout -b $1 origin/$1
    fi
fi
