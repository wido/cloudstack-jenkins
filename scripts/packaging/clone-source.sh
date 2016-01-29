#!/bin/bash

set -e

git clone https://github.com/apache/cloudstack.git

if [ ! -z "$1" ]; then
    if [ "$1" != "master" ]; then
        git checkout -b $1 origin/$1
    fi
fi
