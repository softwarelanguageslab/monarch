#!/bin/bash

# Builds the SimpleActor analysis from source and runs it

if [ "$#" -ne 1 ] ; then 
    echo "Usage: "
    echo "  $0 FILENAME"
    exit 1
fi

SCRIPTDIR=$(dirname -- "${BASH_SOURCE[0]}")
CURRENTDIR=$(pwd)
cd $SCRIPTDIR/..

set -e 

cabal build -j$(nproc)

EXECUTABLE_PATH=$(cabal list-bin simpleactor-exe)
TEMP_DIR=$(mktemp -d)

$EXECUTABLE_PATH analyze2 -f $1 -o $TEMP_DIR --no-translate

echo "Results saved to $TEMP_DIR"
