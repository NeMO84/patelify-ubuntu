#!/bin/bash

export DEBIAN_FRONTEND="noninteractive"
BASE_PACKAGES="build-essential python-software-properties curl wget git-core"

apt-get -y update
apt-get -y install software-properties-common $BASE_PACKAGES
