#!/bin/bash

# Prepare the scripts name and path variables
## get the configuration script's name
script_name=$(basename "${BASH_SOURCE[0]}" .sh)
## get the path to the configrations folder
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
## Configuration name is either the first arg or the scirpt name
config=${1:-$script_name}

# Set some variables for convenience
root="$script_dir/.."
source_dir="$script_dir/../source"
build_dir="$script_dir/../build/$config"
install_dir="$script_dir/../install/$config"

# configure and build install
cmake -S $source_dir -B $build_dir -DCMAKE_INSTALL_PREFIX=$install_dir
cmake --build $build_dir --target install
