#!/bin/bash

# get missing public keys before update
apt-get install -q -y debian-archive-keyring

## install wheezy backports
#if ! grep 'backports' /etc/apt/sources.list -q; then
#   echo "deb http://ftp.us.debian.org/debian wheezy-backports main" >> /etc/apt/sources.list
#fi

# update repo
apt-get update -q -y

# install essentials
apt-get install -q -y man git vim curl tree htop unzip

# on jessie8 only
if [[ $(cat /etc/debian_version) == '8.1' ]]; then
   apt-get install silversearcher-ag
fi

# Install dotfiles
cd ~
if [[ ! -d "~/dotfiles" ]]; then
  git clone https://github.com/hed854/dotfiles.git 
else
  git pull dotfiles
fi

cd dotfiles
./install.sh ~ 
