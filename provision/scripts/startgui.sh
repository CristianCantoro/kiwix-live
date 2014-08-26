#!/usr/bin/env bash

source '/vagrant/provision/globals.sh'

# download the latest version of Kiwix and extract the tar file
cd $VAGRANT_HOME
wget --no-verbose $KIWIX_DOWNLOAD -O $KIWIX_FILE
tar xvjf $VAGRANT_HOME/$KIWIX_FILE
