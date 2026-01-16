import argparse
from pathlib import Path
from dataclasses import dataclass
import pandas as pd

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


    """
    Optional path to a CSV file to which the original table
    will be written together with the path to the translated file
    """
    output_csv: Path | None
  
def read_inputs(inputs_file, full_df = False):
    """
    Reads the input files from a newline-seperate input file

    :param inputs_file the file to read the inputs from (as a Path)
    """

    if not inputs_file.exists():
        raise RuntimeError("inputs file does not exists")
    
    df = pd.read_csv(inputs_file, sep = ";")
    df["filename"] = df["filename"].apply(Path)
    return df if full_df else df["filename"]

def input_output_cmdline_parser_full(input_desc, output_desc = "Path the the output directory"):
    """
    Command-line parser for commands that use an INPUT and OUTPUT argument
    """

    parser = argparse.ArgumentParser()
    parser.add_argument("inputs", help = input_desc)
    parser.add_argument("output" ,help = output_desc)
    parser.add_argument("--prefix", default = None)
    parser.add_argument("--log", default = None)
    parser.add_argument("--output-list", default = None, help = "Write a CSV file to the given path containing the full translated paths as well as the columns in the original table")
    args = parser.parse_args()

    return CmdlineArgs(
        inputs_file = Path(args.inputs),
        outputs_dir = Path(args.output),
        prefix = args.prefix,
        logging_dir = Path(args.log) if args.log else None,
        output_csv = Path(args.output_list) if args.output_list else None
    )

def input_output_cmdline_parser(input_desc, output_desc = "Path to the output directory"):
    """
    Same as 'input_output_cmdline_parser_full' but only returns the input path
    and the output directory path.
    """

    args = input_output_cmdline_parser_full(input_desc, output_desc)

    return args.inputs_file, args.outputs_dir

