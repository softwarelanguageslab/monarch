#!/bin/bash

# Property for deltadebugging, succeeds when the test is unsound

TEST_FILE=$1
OUTPUT=$(cabal run . -- precision -i $TEST_FILE 2>&1)
if [ $? -eq 1 ] ; then
  echo $OUTPUT | grep -F "missing: fromList ["
else
  exit 1
fi
