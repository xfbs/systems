# Octavius

Development machine. 

## Setup

Setup repositories, update package list, and install all packages.

    $ sudo make

Install and setup rust compiler and some tooling

    $ make rust

Setup dconf settings

    $ make dconf

TODO: snapcraft, spotify.

## LXC

See https://linuxcontainers.org/lxc/getting-started/.
https://www.kubos.cz/2018/07/20/ubuntu-unprivileged-lxc
https://pier0w.wordpress.com/2016/12/24/lxc-unprivileged-containers-ubuntu-xenial-16-04/

## LXD

    $ newgrp lxd
    $ lxd init
    $ lxc launch ubuntu:18.04 first

https://linuxcontainers.org/lxd/getting-started-cli/
https://www.cyberciti.biz/faq/how-to-install-setup-lxd-on-fedora-linux/

## Snapcraft

    $ snap install spotify
    $ snap install android-studio

## TexLive

Problem: version of TexLive in Ubuntu repositories is outdated.

https://tex.stackexchange.com/questions/448466/not-possible-to-install-packages-in-ubuntu-bionic-beaver
https://tex.stackexchange.com/questions/1092/how-to-install-vanilla-texlive-on-debian-or-ubuntu
http://www.tug.org/texlive/debian.html
