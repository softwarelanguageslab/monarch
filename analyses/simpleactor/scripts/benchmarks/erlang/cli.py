import argparse
import os

def parse_command_line_arguments():
    parser = argparse.ArgumentParser()
    parser.add_argument("input", help = "The input CSV of benchmark programs")
    parser.add_argument("--log", default=None, help = "Directory to output logfiles to")
    parser.add_argument("--output", default = None, help = "File where the results of the smoke test will be written to (as CSV)")
    parser.add_argument("--memory", default = 4, help = "The amount of memory available to each benchmark")
    parser.add_argument("--threads", default = os.cpu_count(), help = "The number of benchmark programs to concurrently execute (defaults to the number of logical CPU cores)")

    args = parser.parse_args()
    return args
    
