import argparse

def parse_command_line_arguments():
    parser = argparse.ArgumentParser()
    parser.add_argument("input", help = "The input CSV of benchmark programs")
    parser.add_argument("--log", default=None, help = "Directory to output logfiles to")
    parser.add_argument("--output", default = None, help = "File where the results of the smoke test will be written to (as CSV)")

    args = parser.parse_args()
    return args
    
