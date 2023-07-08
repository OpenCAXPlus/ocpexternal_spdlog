#!/bin/bash
# This is the script to check whether the compressed file has required
# structure

version=${1}
external_id=${2:-"spdlog"}

xzfile="$external_id-$version.tar.xz"
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

# cd to the root of the external repository
cd $script_dir/..

# check if the source folder exist
if [ ! -d "ocp/external/$external_id/$version/source" ]; then
    echo "The source folder ocp/external/$external_id/$version/source does not exist."
    return 1
fi

if [ ! -f "ocp/external/$external_id/$version/ocp.yml" ]; then
    echo "The ocp/external/$external_id/$version/ocp.yml file does not exist."
fi

# move back to the folder where you started
cd -
