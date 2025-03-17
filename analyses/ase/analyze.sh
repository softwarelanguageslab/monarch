#!/bin/bash

cabal run . -- analyze -f $1 -a effect -k 5
