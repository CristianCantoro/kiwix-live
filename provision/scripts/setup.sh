#!/usr/bin/env bash

echo 'Running setup.sh script'

source '/vagrant/provision/globals.sh'

export DEBIAN_FRONTEND=noninteractive

# install the gnome desktop manager and Mozilla Firefox from the Ubuntu repos
# apt-get update
apt-get install --assume-yes xorg gnome-core gnome-system-tools \
gnome-app-install
apt-get install --assume-yes firefox


# Copy the directory structure.
# This has to be executed after the above install otherwise we get
# package configuration errors.
rsync -r '/vagrant/provision/files/' '/'
