#!/bin/bash

if test $# -lt 1; then
    echo "Translate all files in the given directory to SimpleActor and run it with a timeout of 5 seconds"
    echo ""
    echo "Usage: " 
    echo "$0 BENCHMARK_DIR"
    exit 1
fi

BENCHDIR=$1
SCRIPTDIR=$(dirname -- "${BASH_SOURCE[0]}")
SIMPLEACTOR=$SCRIPTDIR/..
FILES=$(find $BENCHDIR -type f)

for file in $FILES; do 
    echo -n "Checking $file ... "
    tempout=$(mktemp)
    logout=$(mktemp)
    cat $file | racket $SIMPLEACTOR/racket/run/translate-full.rkt > $tempout
    timeout 5 racket $tempout 1>$logout 2>$logout
    ret=$?
    if [ $ret -eq 124 ];  then
        echo "OK"
    elif [ $ret -eq 0 ]; then
        echo "OK"
    else
        # mark as failed unless the file is expected to fail
        if [[ $file =~ \.fail\..*$ ]] ; then 
            echo "OK"
        else
            echo "FAIL"
            cat $logout
        fi
    fi
done
