#!/bin/sh

if ! [ $(id -u) = 0 ]; then
   echo "The script need to be run as root." >&2
   exit 1
fi

if [ $SUDO_USER ]; then
    real_user=$SUDO_USER
else
    real_user=$(whoami)
fi

cd /usr/src/linux &&
echo "make" && make &&
echo "modules install" && make modules_install &&
echo "install" && make install &&
cd /boot &&
echo "initramfs" && genkernel --install --initramfs-symlink-name=override --initramfs-filename=initramfs --kernel-config="$(find . -name "config*" -print0 | xargs -r -0 ls -1 -t | head -1)" initramfs
