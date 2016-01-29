#!/bin/bash

set -e

cd `dirname $0`

BRANCH="master"

./clone-source.sh $BRANCH

cd cloudstack

./packaging/package.sh -d centos7
