kiwix-live
==========

Repository to set-up a Kiwix (http://kiwix.org) LiveCD and/or virtual machine
instance.

In this repository you will find the files to script the creation of a (for the
moment) (VirtualBox)[]-based virtual machine using
[Vagrant](https://www.vagrantup.com/).
The idea is to script the creation of a fully pre-configured virtual machine 
with kiwix already set up and launched, and then extract from there either 
a [Live CD](https://en.wikipedia.org/wiki/Live_CD) and/or a virtual machine
image.
The base box we are using for this project is a [Ubuntu Trusty Tahr
(14.04 LTS) server 32 bit](https://vagrantcloud.com/ubuntu/trusty32) version.


For developers
--------------
If you want to help out with this project you should
[download](https://www.vagrantup.com/downloads.html) and install Vagrant first.
If you do not know Vagrant you may want to read the
"[Getting started](https://docs.vagrantup.com/v2/getting-started/index.html)"
guide first.

After you have checked out this repository you can launch Vagrant with
`vagrant up`
