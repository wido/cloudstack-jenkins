#!/bin/bash

set -e

BRANCH="master"

`dirname $0`/clone-source.sh $BRANCH

cd cloudstack/packaging

RHEL_VER=$(lsb_release -r|awk '{print $2}'|cut -d '.' -f 1)

case $RHEL_VER in
    6)
        yum install -y maven rpm-build  tomcat ws-commons-util gcc glibc-devel mkisofs MySQL-python
        ./package.sh -d centos63
        ;;
    7)
        yum install -y maven rpm-build  tomcat ws-commons-util gcc glibc-devel mkisofs MySQL-python
        ./package.sh -d centos7
        ;;
    *)
        echo "RedHat/CentOS version could not be detected or is invalid"
        exit 1
esac
