#!/bin/bash

set -e

# Get the current directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

./prepare.sh

# Build using pi-gen
echo Starting pi-gen build...
cd ./pi-gen
./build.sh
cd ../

# Moving deployment files
echo Moving deployment files...
rm -rf ./deploy
mv ./pi-gen/deploy ./

./cleanup.sh
