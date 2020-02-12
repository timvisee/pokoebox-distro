#!/bin/bash

cd /root/pi-gen

apt-get update
apt-get upgrade -y
apt-get install -y coreutils quilt parted qemu-user-static debootstrap zerofree zip dosfstools bsdtar libcap2-bin grep rsync xz-utils file git curl bc kmod xxd

./build.sh -c ../config
