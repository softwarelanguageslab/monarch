#!/bin/bash

# Property for deltadebugging, succeeds when the test does not complete in the specified timespan
# used for reducing programs containing termination bugs

TEST_FILE=$1
timeout 30 cabal run . -- analyze -f $TEST_FILE --no-translate
# The timeout commands returns code 124 when the timeout has been triggered, and returns 0 otherwise
if [ $? -eq 124 ] ; then
  # property has succeeded
  exit 0
else
  exit 1
fi

