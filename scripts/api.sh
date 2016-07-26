#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
apt-get update -q -y

apt-get -q -y install libprotobuf-dev
