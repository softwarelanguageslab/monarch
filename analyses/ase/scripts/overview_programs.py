"""
This scripts generates an overview of the prgoram contained within
the benchmark set, it computes its numbers of lines and the number of lines
in its translated form.
"""

import sys
import pandas as pd
import numpy as np
import subprocess
import json

ORIGINAL_PREFIX = "benchmarks-in"
PROCESSED_PREFIX = "benchmarks-out"

def run_sloc(filename):
    """
    Run the sloc tool on the given file and return the result
    """
    output = subprocess.run(["sloc", filename, "-f", "json"], capture_output = True)
    return json.loads(output.stdout)["summary"]["source"]


def count_benchmark(benchmark_name):
    """
    Count the number of source lines (according to sloc) in both
    the original and processed form of the benchmark
    """

    original_file = f"{ORIGINAL_PREFIX}/{benchmark_name}"
    processed_file = f"{PROCESSED_PREFIX}/{benchmark_name}"

    original_lines = run_sloc(original_file)
    processed_lines = run_sloc(processed_file)

    return original_lines, processed_lines

if len(sys.argv) != 2:
    print("Incorrect number of arguments")
    print("USAGE: ")
    print()
    print(f"{sys.argv[0]} BENCHMARK_LIST_TT")

BENCHMARK_TXT = sys.argv[1]

print(f"[*] Reading benchmarks from {BENCHMARK_TXT}", file=sys.stderr)

with open(BENCHMARK_TXT) as benchmark_file:
    benchmarks = benchmark_file.readlines()
    benchmarks_without_prefix = [benchmark.replace(PROCESSED_PREFIX+"/","") for benchmark in benchmarks]

rows = []

for benchmark in benchmarks_without_prefix:
    print(f"[*] processing {benchmark.strip()}", file=sys.stderr)
    original, processed = count_benchmark(benchmark.strip())
    data = { "benchmark": benchmark.strip(), "original": original, "processed": processed }
    rows.append(data)

df = pd.DataFrame(rows)
df["benchmark"] = df["benchmark"].str.replace(".rkt", "")
df["benchmark"] = df["benchmark"].str.replace("_", "-")

# Change the data frame so that the latex output contains a table split in two 
# were one half contains half of the benchmarks and the other half the other half
df1 = df.iloc[:len(df)//2].reset_index()
df2 = df.iloc[len(df)//2:].reset_index()
df = pd.concat([df1, df2], axis=1, ignore_index=True)
df = df.drop(columns=[0, 4])
df = df.replace('', np.nan)
df.columns = ["Name", "Original 1", "Processed 1", "Name", "Original", "Processed"]
df[["Original 1", "Processed 1"]] = df[["Original 1", "Processed 1"]].astype("Int64")
df.columns = ["Name", "Original", "Processed", "Name", "Original", "Processed"]
df = df.astypes(str)fillna("")
print(df.to_latex(index=False))

