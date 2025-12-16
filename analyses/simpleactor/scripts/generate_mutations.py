# import sys
import os
import optparse
from pathlib import Path
import subprocess
from preprocess.common import input_output_cmdline_parser, read_inputs

############################################################
# Constants
############################################################

SCRIPT_PATH = Path(__file__)

# Path to the Racket mutation script
MUTATE_PATH = SCRIPT_PATH.parent.parent / "racket" / "run" / "mutate.rkt"


def generate(input_file: Path, output_dir: Path) -> None:
    """
    Generate and output mutations based on the inputs file to the output directory
    """
    # Run the mutations
    subprocess.run(["racket", MUTATE_PATH.absolute(), input_file, output_dir])
    
############################################################
# Parsing command line flags
############################################################

if __name__ == "main": 
    inputs_file, output_dir = input_output_cmdline_parser(input_desc = "Path to the file containing input programs on each line")

    ############################################################
    # Reading list of input files
    ############################################################

    input_files = read_inputs(inputs_file)

    ############################################################
    # Mutating each input file
    ############################################################

    # SANITY CHECK
    # Ensure that each input file exists
    for input_file in input_files:
        p = Path(input_file)
        if not p.exists():
           raise RuntimeError(f"input file {input_file} does not exists")

    try:
        for input in input_files:
            generate(input, output_dir)
    except Exception as e:
        print(str(e))    
