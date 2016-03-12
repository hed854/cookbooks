#!/bin/bash

# get missing public keys before update
apt-get install -q -y debian-archive-keyring
apt-get update -q -y

apt-get install -q -y git vim curl tree htop

# Install dotfiles
cd ~
if [[ ! -d "~/dotfiles" ]]; then
  git clone https://github.com/hed854/dotfiles.git 
else
  git pull dotfiles
fi

cd dotfiles
./install.sh ~ 
