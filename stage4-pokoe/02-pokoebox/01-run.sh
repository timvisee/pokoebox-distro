#!/bin/bash -e

# Append to config.txt
cat files/config.txt.append >> "${ROOTFS_DIR}/boot/config.txt"

# Install configuration files
install -m 755 files/xinitrc "${ROOTFS_DIR}/home/pokoe/.xinitrc"
install -m 755 files/xscreensaver "${ROOTFS_DIR}/home/pokoe/.xscreensaver"

# Install pokoebox updater
wget 'https://gitlab.com/timvisee/pokoebox/-/raw/master/scripts/update.sh' -O "${ROOTFS_DIR}/opt/pokoebox/update"
chown pokoe:pokoe "${ROOTFS_DIR}/opt/pokoebox/update"
chmod u+rwx,g+rx "${ROOTFS_DIR}/opt/pokoebox/update"
