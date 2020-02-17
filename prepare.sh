#!/bin/bash

set -e

./cleanup.sh

# Prepare pi-gen directory, move our config and stages into it
echo Preparing pi-gen directory...
cp -r ./config ./stage* ./pi-gen/
