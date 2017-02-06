#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
apt-get -q -y install python python-dev libffi-dev libssl-dev

# install pip
wget https://bootstrap.pypa.io/get-pip.py
chmod +x get-pip.py
python get-pip.py
rm -rf get-pip.py

pip install pytest pyyaml jinja2 bs4 fabric flask

