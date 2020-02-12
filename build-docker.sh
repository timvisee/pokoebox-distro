#!/bin/bash

set -e

# Get the current directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

# Cleanup
echo Cleanup pi-gen directory
git submodule update --init

# Prepare pi-gen directory, move our config and stages into it
echo Preparing pi-gen directory...
cp -r ./config ./stage* ./pi-gen/

# Build using pi-gen
echo Starting pi-gen build...
cd ./pi-gen
./build-docker.sh
cd ../

# Moving deployment files
echo Moving deployment files...
rm -rf ./deploy
mv ./pi-gen/deploy ./

# Cleanup
echo Cleanup pi-gen directory
rm -r ./pi-gen/config ./pi-gen/stage*-pokoe
git submodule update --init
