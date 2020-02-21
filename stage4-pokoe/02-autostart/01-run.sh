#!/bin/bash -e

# Add autologin files, start pokoebox on autologin
install -m 644 files/autologin.conf "${ROOTFS_DIR}/etc/systemd/system/getty@tty1.service.d/autologin.conf"
