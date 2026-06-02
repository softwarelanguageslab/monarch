#!/bin/bash

TEST_FILE=$1
OUTPUT_DIR=$(mktemp -d)

cabal run . -- analyze2 -f $TEST_FILE --no-translate -o $OUTPUT_DIR 2>&1 | grep "Variable cons not found"
