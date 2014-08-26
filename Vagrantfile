# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

# Require the reboot plugin.
# See https://github.com/exratione/vagrant-provision-reboot
require './vagrant-provision-reboot-plugin'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu/trusty32"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  config.vm.box_check_update = false

  config.vm.provider "virtualbox" do |vb|
    host = RbConfig::CONFIG['host_os']

    # Stolen from 
    # http://www.stefanwrobel.com/how-to-make-vagrant-performance-not-suck
    # Give VM 1/2 system memory & access to all cpu cores on the host
    if host =~ /darwin/
      cpus = `sysctl -n hw.ncpu`.to_i
      # sysctl returns Bytes and we need to convert to MB
      mem = `sysctl -n hw.memsize`.to_i / 1024 / 1024 / 2
    elsif host =~ /linux/
      cpus = `nproc`.to_i
      # meminfo shows KB and we need to convert to MB
      mem = `grep 'MemTotal' /proc/meminfo | sed -e 's/MemTotal://' -e 's/ kB//'`.to_i / 1024 / 2
    else # sorry Windows folks, I can't help you
      cpus = 2
      mem = 1024
    end

    vb.customize ["modifyvm", :id, "--memory", mem]
    vb.customize ["modifyvm", :id, "--cpus", cpus]
  end

  # Execute shell provisioning
  config.vm.provision "shell", path: "provision/scripts/setup.sh", privileged: true
  config.vm.provision "shell", path: "provision/scripts/startgui.sh", privileged: false

  # Run a reboot of a *NIX guest.
  config.vm.provision :unix_reboot

  config.vm.provider "virtualbox" do |vb|
    # Boot with GUI
    vb.gui = true
  end

end
