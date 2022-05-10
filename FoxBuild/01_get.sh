#/bin/bash

alpineminirootfsfile="alpine-minirootfs-3.13.5-x86_64.tar.gz"
linuxver="linux-5.12.7"

wget -4 http://dl-cdn.alpinelinux.org/alpine/v3.13/releases/x86_64/$alpineminirootfsfile
mkdir alpine-minirootfs
tar -C ./alpine-minirootfs -xf $alpineminirootfsfile
wget -4 https://cdn.kernel.org/pub/linux/kernel/v5.x/$linuxver.tar.xz
tar -xf $linuxver.tar.xz

ln -s $linuxver linux

