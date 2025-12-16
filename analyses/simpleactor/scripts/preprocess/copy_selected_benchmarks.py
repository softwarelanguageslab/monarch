#!/usr/bin/env python

from pathlib import Path
import os
import subprocess
import sys
import shutil

if len(sys.argv) != 3:
    print("Error: wrong number of arguments")
    print("Usage: ")
    print(f"{sys.argv[0]} PROGRAM_LIST_LOCATION BENCHMARK_LOCATION")
    sys.exit(1)
else:
    PROGRAMS_LOCATION = sys.argv[1]
    BENCHMARK_LOCATION = Path(sys.argv[2]).absolute()

try:
    PROGRAMS = open(PROGRAMS_LOCATION).readlines()
    OUTPUT_DIR = (Path(__file__).parent.parent / "benchmarks-in")
    WORKING_DIR = BENCHMARK_LOCATION

    os.chdir(WORKING_DIR)
except Exception as e:
    print(e)
    print("Failed to read benchmark programs, check the path. ")
    
    sys.exit(1)

print("[*] Copying files")
for program in PROGRAMS:
    program = program.strip()
    new_location = OUTPUT_DIR / program.replace("/", "_")
    print(f"[*] Copying {program} to {new_location}")
    shutil.copy(program, new_location.absolute())

