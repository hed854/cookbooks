#!/bin/bash

# get missing public keys before update
apt-get install -q -y debian-archive-keyring

## install wheezy backports
#if ! grep 'backports' /etc/apt/sources.list -q; then
#   echo "HELLO C HED"
#   echo "deb http://ftp.us.debian.org/debian wheezy-backports main" >> /etc/apt/sources.list
#fi

# update repo
apt-get update -q -y

# install essentials
apt-get install -q -y man git vim curl tree htop unzip

# on jessie8 only
apt-get install silversearcher-ag

# Install dotfiles
cd ~
if [[ ! -d "~/dotfiles" ]]; then
  git clone https://github.com/hed854/dotfiles.git 
else
  git pull dotfiles
fi

cd dotfiles
./install.sh ~ 
