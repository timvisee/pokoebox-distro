#!/bin/bash -e

# Append to config.txt
cat files/config.txt.append >> "${ROOTFS_DIR}/boot/config.txt"

# Install systemd services
install -m 644 files/pulseaudio.service "${ROOTFS_DIR}/lib/systemd/user/pulseaudio.service"
install -m 644 files/mpris-proxy.service "${ROOTFS_DIR}/lib/systemd/user/mpris-proxy.service"
mkdir -p "${ROOTFS_DIR}/home/pokoe/.config/systemd/user/default.target.wants"
ln -fs "${ROOTFS_DIR}/lib/systemd/user/pulseaudio.service" "${ROOTFS_DIR}/home/pokoe/.config/systemd/user/default.target.wants/pulseaudio.service"
ln -fs "${ROOTFS_DIR}/lib/systemd/user/mpris-proxy.service" "${ROOTFS_DIR}/home/pokoe/.config/systemd/user/default.target.wants/mpris-proxy.service"

# Install configuration files
install -m 755 files/xinitrc "${ROOTFS_DIR}/home/pokoe/.xinitrc"
install -m 755 files/xscreensaver "${ROOTFS_DIR}/home/pokoe/.xscreensaver"

# Install pokoebox updater
wget 'https://gitlab.com/timvisee/pokoebox/-/raw/master/scripts/update.sh' -O "${ROOTFS_DIR}/opt/pokoebox/update"
chmod u+rw,g+r,a+x "${ROOTFS_DIR}/opt/pokoebox/update"
