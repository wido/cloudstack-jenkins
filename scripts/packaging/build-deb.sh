#!/bin/bash

set -e

cd `dirname $0`

BRANCH="master"

./clone-source.sh $BRANCH

cd cloudstack

apt-get update
apt-get install -y dpkg-dev debhelper openjdk-7-jdk genisoimage python-mysqldb maven python

cd cloudstack

dpkg-buildpackage -j2
