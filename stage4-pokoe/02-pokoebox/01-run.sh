#!/bin/bash -e

# Install pokoebox updater
wget 'https://gitlab.com/timvisee/pokoebox/-/raw/master/scripts/update.sh' -O "${ROOTFS_DIR}/opt/pokoebox/update"
chmod a+x "${ROOTFS_DIR}/opt/pokoebox/update"

# Install other pokoebox files
install -m 755 files/start "${ROOTFS_DIR}/opt/pokoebox/start"

# Append to config.txt
cat files/config.txt.append >> "${ROOTFS_DIR}/boot/config.txt"

# Install xscreensaver configuration
install -m 755 files/xscreensaver "${ROOTFS_DIR}/home/pokoe/.xscreensaver"
