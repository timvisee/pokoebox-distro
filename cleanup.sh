#!/bin/bash

set -e

# Cleanup
echo Cleanup pi-gen directory
rm -rf ./pi-gen/config ./pi-gen/stage*-pokoe
git submodule update --init
