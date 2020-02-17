#!/bin/bash -e

# Install pokoebox updater
wget 'https://gitlab.com/timvisee/pokoebox/-/raw/master/scripts/update.sh' -O "${ROOTFS_DIR}/opt/pokoebox/update"
chmod a+x "${ROOTFS_DIR}/opt/pokoebox/update"

# Install other pokoebox files
install -m 755 files/start "${ROOTFS_DIR}/opt/pokoebox/start"
