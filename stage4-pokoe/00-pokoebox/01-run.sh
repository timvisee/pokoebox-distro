#!/bin/bash -e

# Install pokoebox updater
curl -sSL 'https://gitlab.com/timvisee/pokoebox/-/raw/master/scripts/update.sh' -o "${ROOTFS_DIR}/opt/pokoebox/update"
chmod a+x "${ROOTFS_DIR}/opt/pokoebox/update"

# Install other pokoebox files
install -m 755 files/start "${ROOTFS_DIR}/opt/pokoebox/start"
