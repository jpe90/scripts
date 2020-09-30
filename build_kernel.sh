#!/bin/sh
# we need to execute the find command in the --config parameter
cd /usr/src/linux &&
echo "make" && sudo make &&
echo "modules install" && sudo make modules_install &&
echo "install" && sudo make install &&
echo "initramfs" && sudo genkernel --install --kernel-config="$(find . -name "config*" -print0 | xargs -r -0 ls -1 -t | head -1)" initramfs
