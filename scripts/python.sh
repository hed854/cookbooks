#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
apt-get -q -y install python python-pip python-dev libffi-dev
pip install pytest pyyaml jinja2 bs4 progressbar2

# fabric needs python-dev
pip install fabric


