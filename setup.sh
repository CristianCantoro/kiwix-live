#!/usr/bin/env bash

echo 'Running setup.sh script'

VAGRANT_HOME='/home/vagrant'

KIWIX_FILE='kiwix-0.9-rc2-linux-i686.tar.bz2'

KIWIX_DOWNLOAD='http://sourceforge.net/projects/kiwix/files/0.9_rc2/'\
$KIWIX_FILE'/download'

export DEBIAN_FRONTEND=noninteractive

# install the XFCE4 desktop manager and Mozilla Firefox from the Ubuntu repos
apt-get update
apt-get install --assume-yes xfce4
apt-get install --assume-yes firefox

# download the latest version of Kiwix and extract the tar file
cd $VAGRANT_HOME
wget -q $KIWIX_DOWNLOAD -O qkiwix-0.9-rc2-linux-i686.tar.bz2
tar xvjf $VAGRANT_HOME/kiwix-0.9-rc2-linux-i686.tar.bz2
