from pathlib import Path
import os
import subprocess
import sys

GUILE_ENABLED = False

def preprocess_pass(contents, script, additional_argv = []):
    """
    Pass the given file to the given Racket processing script,
    capturing its output to the return value of this function.

    :param contents the contents of the input file 
    :param script the Racket script to execute 
    :param additional_argv optional number of additional 
           command-line arguments.
    """

    proc = subprocess.Popen(["racket", script] + additional_argv, stdin=subprocess.PIPE, stdout=subprocess.PIPE, text = True)

    #proc.stdin.write("(begin")
    proc.stdin.writelines(contents)
    #proc.stdin.write(")")
    proc.stdin.flush()
    proc.stdin.close()

    return proc.stdout.readlines()

if len(sys.argv) != 3:
    print("Error: wrong number of arguments")
    print("Usage: ")
    print(f"{sys.argv[0]} PROGRAM_LIST_LOCATION BENCHMARK_LOCATION")
    sys.exit(1)
else:
    PROGRAMS_LOCATION = sys.argv[1]
    BENCHMARK_LOCATION = Path(sys.argv[2]).absolute()


try:
    PROGRAMS = list(filter(lambda file: file[0] != "#", open(PROGRAMS_LOCATION).readlines()))
    OUTPUT_DIR = (Path(__file__).parent.parent / "benchmarks-out")
    GUILE_DIR = (Path(__file__).parent.parent / "benchmarks-guile")
    WORKING_DIR = BENCHMARK_LOCATION

    os.chdir(WORKING_DIR)
except Exception as e:
    print(e)
    print("Failed to read benchmark programs, check the path. ")
    
    sys.exit(1)


TRANSLATION_SCRIPT = (Path(__file__).parent.parent.parent / "simpleactor" / "racket" / "run" / "translate-full.rkt").absolute()
GUILE_SCRIPT = (Path(__file__).parent.parent.parent / "simpleactor" / "racket" / "run" / "translate-guile.rkt").absolute()
INSTRUMENT_SCRIPT = (Path(__file__).parent.parent.parent / "simpleactor" / "racket" / "run" / "instrument-guile.rkt").absolute()

print("[*] Processing programs ... ")
#print("[1] Removing #lang racket header")

for program in PROGRAMS: 
    program = program.strip()
    print(f"[*] Processing {program} (1/2)")
    with open(program) as f:
        contents = open(program).readlines()
    
    # Regular pass

    output_filename = program.replace("/", "_")
    output = preprocess_pass(contents[1:], TRANSLATION_SCRIPT)

    with open(OUTPUT_DIR / output_filename, "w") as f: 
        f.writelines(output)
    
    print(f"[*] Processing {program} (2/2)")
    if not GUILE_ENABLED:
        continue

    # Pass for Guile (without instrumentation)
    output_filename = program.replace("/", "_") + ".tmp"
    output = preprocess_pass(output, GUILE_SCRIPT)
    
    with open(GUILE_DIR / output_filename, "w") as f: 
        f.writelines(output)

    # Pass for Guile (with instrumentation),
    # this requires a slightly modified version 
    # of the preprocess pass since it requires 
    # the name of a file as a command line argument 
    # instead of reading from the standard input


    input_filename = GUILE_DIR.absolute().as_posix() + "/" + output_filename
    output_filename = program.replace("/", "_")
    output = preprocess_pass([], INSTRUMENT_SCRIPT, [input_filename])

    with open(GUILE_DIR / output_filename, "w") as f: 
        f.writelines(output)

