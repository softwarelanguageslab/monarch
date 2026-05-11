#!/bin/bash

TEST_FILE=$1
OUTPUT_DIR=$(mktemp -d)
echo $PWD
cabal run . -- analyze2 -f $TEST_FILE --no-translate -o $OUTPUT_DIR | grep "SENTINEL"

if [ $? -eq 0 ]; then
    exit 1
else
    exit 0
fi
