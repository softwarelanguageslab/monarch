import argparse
from pathlib import Path
from dataclasses import dataclass

@dataclass 
class CmdlineArgs:
    """
    Path to input file which contains paths
    to each benchmark program as lines
    """
    inputs_file: Path
    """
    Path the the output directory
    """
    outputs_dir: Path

    """
    A prefix to use when constructing the path
    to a benchmark file.
    """
    prefix: str | None

    """
    Optional directory where the stderror of a translation
    executable will be stored.
    """
    logging_dir: Path | None

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

def input_output_cmdline_parser_full(input_desc, output_desc = "Path the the output directory"):
    """
    Command-line parser for commands that use an INPUT and OUTPUT argument
    """

    parser = argparse.ArgumentParser()
    parser.add_argument("inputs", help = input_desc)
    parser.add_argument("output" ,help = output_desc)
    parser.add_argument("--prefix", default = None)
    parser.add_argument("--log", default = None)
    args = parser.parse_args()

    return CmdlineArgs(
        inputs_file = Path(args.inputs),
        outputs_dir = Path(args.output),
        prefix = args.prefix,
        logging_dir = Path(args.log) if args.log else None
    )

def input_output_cmdline_parser(input_desc, output_desc = "Path to the output directory"):
    """
    Same as 'input_output_cmdline_parser_full' but only returns the input path
    and the output directory path.
    """

    args = input_output_cmdline_parser_full(input_desc, output_desc)

    return args.inputs_file, args.outputs_dir

