#!/bin/bash -e

# Set-up CA certificates
update-ca-certificates --fresh

# Hack to reconfigure missing shared-mime-info
dpkg-reconfigure shared-mime-info
