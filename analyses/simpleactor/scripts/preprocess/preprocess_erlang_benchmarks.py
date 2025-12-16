"""
Runs all preprocessing steps for a list of Erlang benchmark programs. This includes the following steps:
* Translate the program to a Core Erlang version which includes line and column information in its annotations
* Generate an instrumented version of the program for precision and soundness testing (not yet implemented)
* Generate mutations of the program that removes message sends or receives (not yet implemented)
In contrast to the script `preprocess_benchmarks.py`, this script does not generate a SimpleActor program, the frontend to do so is instead included in the Core Erlang analysis itself and will be executed when loading the program for analysis.
"""

import common
from pathlib import Path
import subprocess

#############################################################
## Constants
#############################################################

SCRIPT_PATH = Path(__file__)

TO_CORE_SCRIPT = (SCRIPT_PATH.parent / "to_core").resolve().as_posix()

#############################################################
## Auxilary functions
#############################################################


def preprocess(input: Path, output_dir: Path, prefix: str | None = None, log_dir: Path | None = None) -> None:
    if not prefix:
        prefix = ""

    actual_input_path = Path(prefix).joinpath(input)
    input_name = input.as_posix().replace("/", "_")
    output_path = (output_dir / input_name).resolve().as_posix() + ".core"
    result = subprocess.run([TO_CORE_SCRIPT, actual_input_path.resolve().as_posix()], capture_output=True)

    if result.returncode != 0:
        print(f"[E] Failed to process {input}")
        if log_dir:
            log_path = (log_dir / input_name).resolve().as_posix() + ".err"
            print(f"[*] Logging failure to {log_path}")
            with open(log_path, "wb") as f:
                f.write(result.stderr)
        return

    output = result.stdout

    print(f"[*] Processed {input}, writing to {output_path}")
    with open(output_path, "wb") as f:
        f.write(output)

    print(f"[*] Benchmark {input} successfully written to {output_path}")


def main(args):
    benchmark_txt    = args.inputs_file
    benchmark_prefix = args.prefix
    output_dir       = args.outputs_dir

    ## Actual preprocessing
    print(f"[*] Preprocessing benchmarks from {benchmark_txt}", end='')
    if benchmark_prefix:
        print(f" with prefix {benchmark_prefix}")
    else:
        print("")

    inputs = common.read_inputs(benchmark_txt)

    if not output_dir.exists():
        output_dir.mkdir()

    if args.logging_dir and not args.logging_dir.exists():
        args.logging_dir.mkdir()

    for input_path in inputs:
        print(f"[*] Processing {input_path}")
        preprocess(input_path, output_dir, benchmark_prefix, args.logging_dir)
    


#############################################################
## Entrypoint
#############################################################

if __name__ == "__main__":
    ## Command-line parsing
    args = common.input_output_cmdline_parser_full("Preprocess Erlang benchmarks from the given file")
    main(args)
