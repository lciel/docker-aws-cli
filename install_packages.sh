#!/bin/sh

# Install Packages
apt-get -y update
apt-get install -y -q \
    python \
    python-pip

pip install awscli
