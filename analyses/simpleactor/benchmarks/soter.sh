#!/bin/bash

ROOT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )/../

# First, preprocess the benchmarks

cd $ROOT_DIR
python3 scripts/preprocess/preprocess_erlang_benchmarks.py --prefix programs/benchmarks/actors/erlang/ --output-list output/soter.csv --log output/logs benchmarks/soter.txt output/

# then, run the smoke test

python3 scripts/benchmarks/erlang/smoke.py output/soter.csv --log output/logs/smoke/ --output output/soter_smoke.csv

