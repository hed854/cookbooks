#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
apt-get update -q -y

apt-get install -q -y ruby rubygems jekyll

