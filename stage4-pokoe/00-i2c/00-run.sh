#!/bin/bash -e

cat files/config.txt.append >> "${ROOTFS_DIR}/boot/config.txt"
