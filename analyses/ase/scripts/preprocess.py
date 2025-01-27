from pathlib import Path
import os
import subprocess
import sys

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
    OUTPUT_DIR = (Path(__file__).parent.parent / "benchmarks-out")
    WORKING_DIR = BENCHMARK_LOCATION

    os.chdir(WORKING_DIR)
except Exception as e:
    print(e)
    print("Failed to read benchmark programs, check the path. ")
    
    sys.exit(1)


TRANSLATION_SCRIPT = (Path(__file__).parent.parent.parent / "simpleactor" / "racket" / "run" / "translate-full.rkt").absolute()

print("[*] Processing programs ... ")
#print("[1] Removing #lang racket header")

for program in PROGRAMS: 
    program = program.strip()
    print(f"[*] Processing {program}")
    with open(program) as f:
        contents = open(program).readlines()
    
    output_filename = program.replace("/", "_")
    proc = subprocess.Popen(["racket", TRANSLATION_SCRIPT], stdin=subprocess.PIPE, stdout=subprocess.PIPE, text = True)

    proc.stdin.write("(begin")
    proc.stdin.writelines(contents[1:])
    proc.stdin.write(")")
    proc.stdin.flush()
    output = proc.stdout.readlines()

    with open(OUTPUT_DIR / output_filename, "w") as f: 
        f.writelines(output)
    

