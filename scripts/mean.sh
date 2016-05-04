#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
apt-get -q -y install nodejs npm mongodb

npm install angular express mongoose nodemon

# Create alias for node executable
if [[ !-f /usr/bin/node ]]; then
   ln -s /usr/bin/nodejs /usr/bin/node
fi
