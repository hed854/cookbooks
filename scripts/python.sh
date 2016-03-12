#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
apt-get -q -y install python python-pip python-dev
pip install pytest

# fabric needs python-dev
pip install fabric
