"""
Runs all preprocessing steps for a benchmark, which include the following steps:
* Generate mutated versions of the benchmark programs
* For each mutated version, translate it to a SimpleActor program
* Translate the original program to a SimpleActor program as well.
"""
import glob
import os
import sys
import optparse
import subprocess
import common
from pathlib import Path
from generate_mutations import generate

############################################################
# Constants
############################################################

SCRIPT_PATH = Path(__file__)

# Path to the translation script
TRANSLATION_SCRIPT = SCRIPT_PATH.parent.parent / "racket" / "run" / "translate-simpleactor.scm"

############################################################
# Preprocessing functions
############################################################

def translate(input_file, output_dir):
    """
    Translate the given input file and write it to the given output dir as FILENAME-translated.EXT
    """
    with open(input_file) as f:
        input = f.read()

    result = subprocess.run(["racket", TRANSLATION_SCRIPT], input=input, text=True, capture_output=True)
    output = result.stdout
    output_path = output_dir / (str(input_file.stem) + "-translated" + input_file.suffix)
    print("*", end="", file=sys.stderr, flush=True)
    with open(output_path, "w") as f:
        f.write(output)

    return output_path


def preprocess(input_file, output_dir):
    """
    Run the preprocessing steps on the given input file.
    """
    # Generate mutations
    generate(input_file, output_dir)
    mutated_files = [ Path(f) for f in glob.glob(str(output_dir / input_file.stem) + "*" + input_file.suffix) ]
    output_names = []
    for file in mutated_files:
        output_names.append(translate(file, output_dir))

    return output_names            

if __name__ == "__main__":
    inputs_path, output_dir = common.input_output_parser("File containing list of input files to preprocess")
    output_dir = Path(output_dir / str(inputs_path.stem))

    # ensure that directory is either empty or non-existent
    if not (not output_dir.exists() or not os.listdir(output_dir)):
        print("Error: output directory must be empty", file=sys.stderr)
        sys.exit(1)
    
    input_files = common.read_inputs(inputs_path)
    output_files = [ preprocess(input_file, output_dir) for input_file in input_files ]

    for output_file in sum(output_files, []):
        print(output_file)

