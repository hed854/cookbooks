#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

# see https://docs.mongodb.com/v2.6/tutorial/install-mongodb-on-debian/#install-mongodb
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
apt-get update -q -y

apt-get -q -y install nodejs npm mongodb-org

npm install angular express mongoose grunt

#npm grunt-exec

# global installs
npm install -g nodemon

# Create alias for node executable
if [[ ! -f /usr/bin/node ]]; then
   ln -s /usr/bin/nodejs /usr/bin/node
fi
