#!/bin/sh

if ! [[ $1 =~ ^https?://.*\.repo$ ]]; then
    echo "Invalid URL"
    exit
fi

cd /etc/yum.repos.d
sudo wget $1
rpm-ostree update
