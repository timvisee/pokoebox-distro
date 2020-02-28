#!/bin/bash -e

# Install bluetooth configuration files
cat files/main.conf.append >> "${ROOTFS_DIR}/etc/bluetooth/main.txt"
install -m 644 files/audio.conf "${ROOTFS_DIR}/etc/bluetooth/audio.conf"
