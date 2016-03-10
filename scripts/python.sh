#!/bin/bash

apt-get -y install python python-pip python-dev
pip install pytest

# fabric needs python-dev
pip install fabric
