#!/bin/bash -e

# Install bluetooth configuration files
install -m 644 files/audio.conf "${ROOTFS_DIR}/etc/bluetooth/audio.conf"
