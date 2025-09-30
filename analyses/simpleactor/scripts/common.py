import argparse
from pathlib import Path

def read_inputs(inputs_file):
    """
    Reads the input files from a newline-seperate input file

    :param inputs_file the file to read the inputs from (as a Path)
    """

    if not inputs_file.exists():
        raise RuntimeError("inputs file does not exists")
    
    with open(inputs_file) as f:
        input_files = [ Path(line.strip()) for line in f.readlines() ]

    return input_files

def input_output_cmdline_parser(input_desc, output_desc = "Path to the output directory"):
    """
    Command-line parser for commands that use an INPUT and OUTPUT argument
    """

    parser = argparse.ArgumentParser()
    parser.add_argument("inputs", help = input_desc)
    parser.add_argument("output" ,help = output_desc)
    args = parser.parse_args()
    return Path(args.inputs), Path(args.output)

