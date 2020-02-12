#!/bin/bash

# Get the current directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Switch to pi-gen directory, start build process
cd ./pi-gen
./build.sh -c ../config $@
