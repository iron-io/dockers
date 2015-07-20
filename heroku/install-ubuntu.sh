#!/bin/sh

# add heroku repository to apt
echo "deb http://toolbelt.heroku.com/ubuntu ./" > /etc/apt/sources.list.d/heroku.list

# install heroku's release key for package verification
wget -O- https://toolbelt.heroku.com/apt/release.key | apt-key add -

# update your sources
apt-get update

# install the toolbelt
apt-get install -y heroku-toolbelt
