#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

apt-get install -y tzdata
ln -fs /usr/share/zoneinfo/Asia/Hong_Kong /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata
