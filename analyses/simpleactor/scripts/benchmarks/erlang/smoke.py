"""
Takes a CSV of Erlang Core benchmark programs as an input
and runs them through the SimpleActor analysis to check
whether the SimpleActor analysis has a meaningful result.
"""

import cli
import schema
import pandas as pd
from pathlib import Path
import sys
import subprocess

SCRIPT_PATH = Path(__file__)
SIMPLEACTOR_CWD = SCRIPT_PATH.parent.parent.parent.parent
GHC_DEBUG = True

if GHC_DEBUG:
    GHC_OPTS = ["--enable-profiling"]
    RUN_OPTS = ["+RTS", "-xc", "-RTS"]
else:
    GHC_OPTS = []
    RUN_OPTS = []


class SmokeTestRunner:
    __log_dir: Path | None

    def __init__(self, log_dir: Path | None):
        self.__log_dir = log_dir

        if self.__log_dir and not self.__log_dir.exists():
            self.__log_dir.mkdir(parents=True)
            
    def output_captured_log(self, output_path, stdout, stderr):
        """
        Outputs the log from running the benchmark at 'output_path' to the '__log_dir' if set.
        A file named 'output_path'.out and 'output_path'.err will be created in '__log_dir' which
        capture the stdout and stderror streams of the benchmarks respectively.
        """

        def write_to(filename, contents):
            if Path(filename).exists():
                Path(filename).unlink()

            with open(filename, "w+") as f:
                f.write(contents)

        if self.__log_dir:
            # Assuming that there are no additional levels of nesting in the output directory (from preprocess_erlang.py)
            output_base_name = output_path.name + ".out"
            error_base_name = output_path.name + ".err"
            stdout_log = self.__log_dir / output_base_name
            stderr_log = self.__log_dir / error_base_name
            write_to(stdout_log, stdout)
            write_to(stderr_log, stderr)
        
        
    def smoke_test(self, main_module, main_function, output_path, **kwargs):
        """
        Returns true if the smoke test passed for the given benchmark file
        """
        print(f"[*] Testing {output_path} ... ", end = '', flush = True)
        # TODO: add reason for failure to the output?
        try:
            p = subprocess.run(["cabal" ,"run"] + GHC_OPTS + [".", "--"] + RUN_OPTS + ["core-erlang", "-f" , output_path, "--main-module", main_module, "--main-function", main_function, "-o" , "output"], cwd = SIMPLEACTOR_CWD, check = True, capture_output=True, text = True)
            stdout, stderr = p.stdout, p.stderr
            success = True
        except subprocess.CalledProcessError as e:
            stdout, stderr = e.stdout, e.stderr
            success = False

        self.output_captured_log(Path(output_path), stdout, stderr)
        print("SUCCESS" if success else "FAILURE")
        return success
        

def main():
    args = cli.parse_command_line_arguments()
    input_path = Path(args.input)

    if not input_path.exists():
        print(f"Input file {input_path} does not exists")
        sys.exit(1)

    
    df = schema.load_df(input_path, schema.core_benchmarks_schema)

    if df is None:
        sys.exit(1)

    success_benchmarks = df[df["success"]].to_dict("records")

    runner = SmokeTestRunner(Path(args.log) if args.log is not None else None)
    
    smoke_successes = []
    for benchmark in success_benchmarks:
        smoke_successes.append(runner.smoke_test(**benchmark))

    df["smoke_success"] = pd.Series(smoke_successes)


    if args.output is not None:
        df.to_csv(args.output, index = False)
    else: 
        print(df)

if __name__ == "__main__":
    main()
