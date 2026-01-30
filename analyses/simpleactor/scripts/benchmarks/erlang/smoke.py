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
import tempfile
from dataclasses import dataclass
from abc import ABC, abstractmethod
import json
import resource


SCRIPT_PATH = Path(__file__)
SIMPLEACTOR_CWD = SCRIPT_PATH.parent.parent.parent.parent
GHC_DEBUG = False
TIMEOUT = 20 # IN SECONDS


if GHC_DEBUG:
    GHC_OPTS = ["--enable-profiling"]
    RUN_OPTS = ["+RTS", "-xc", "-RTS"]
else:
    GHC_OPTS = []
    RUN_OPTS = []

class SmokeTestStatus(ABC):
    @abstractmethod
    def print(self) -> str: pass
    def is_success(self) -> bool:
        return False
        

@dataclass
class Success(SmokeTestStatus):
    """
    If the analysis has succeeded, it will have a result,
    the result is communicated through its JSON output and
    stored in a deserialized form here.    
    """
    result: object

    @staticmethod
    def from_result(result):
        # Invariant: if the analysis has a zero exit-code
        # then the "ok" field must be "true"
        assert(result["ok"])

        return Success(result["value"])
        
    def print(self):
        return "SUCCESS"

    def is_success(self):
        return True

@dataclass
class Failure(SmokeTestStatus):
    """
    If exit code > 0 then the analysis has failed
    for some reason, the "reason" field contains
    the reason communicated by the analysis through
    its JSON output.
    """
    result: object

    @staticmethod
    def from_result(result):
        # Invariant: if the analysis has a non-zero exit-code
        # then the "ok" field must be "false"
        assert(not result["ok"])
        return Failure(result["value"])
        
    def print(self):
        return "FAIL"

class Timeout(SmokeTestStatus):
    def __init__(self):
        self.result = {}
    
    def print(self):
        return "TIMEOUT"

def set_limits():
    # Limit virtual memory to 1GB (in bytes)
    # resource.RLIMIT_AS is the equivalent of ulimit -v
    limit_in_bytes = 8 * 1024 * 1024 * 1024 
    # The actual hard limit it 25% more than the soft limit, this is chosen so that
    # the subprocess can still handle the resource exhaustion gracefully before the
    # process is killed by the OS so that we can signal the reason for the kill in the
    # benchmark results.
    resource.setrlimit(resource.RLIMIT_AS, (limit_in_bytes, int(limit_in_bytes*1.25)))
    
    # Limit CPU time to 10 seconds
    # resource.RLIMIT_CPU is the equivalent of ulimit -t
    resource.setrlimit(resource.RLIMIT_CPU, (TIMEOUT, TIMEOUT*2))

    
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
        
        
    def smoke_test(self, main_module, main_function, output_path, **_) -> SmokeTestStatus:
        """
        Returns SmokeTestResult.SUCCESS if the smoke test passed for the given benchmark file
        """
        print(f"[*] Testing {output_path} ... ", end = '', flush = True)

        # Create a temporary file to which the JSON output will be written 

        out_json = tempfile.NamedTemporaryFile(suffix=".json", delete_on_close=True)
        
        try:
            p = subprocess.run(["cabal" ,"run"] + GHC_OPTS + [".", "--"] + RUN_OPTS + ["core-erlang", "-f" , output_path, "--main-module", main_module, "--main-function", main_function, "-o" , out_json.name], cwd = SIMPLEACTOR_CWD, check = True, capture_output=True, text = True, timeout = TIMEOUT, preexec_fn=set_limits)
            stdout, stderr = p.stdout, p.stderr
            success = Success.from_result(json.load(out_json))
        except (subprocess.CalledProcessError) as e:
            print(e.returncode)
            stdout, stderr = e.stdout, e.stderr
            success = Failure.from_result(json.load(out_json))
        except (subprocess.TimeoutExpired) as e:
            if e.stdout is None or e.stderr is None:
                stdout,stderr = "", ""
            else:
                stdout, stderr = e.stdout.decode(), e.stderr.decode()
            success = Timeout()

        self.output_captured_log(Path(output_path), stdout, stderr)
        print(success.print())

        out_json.close()
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
    
    smoke_results = []
    for benchmark in success_benchmarks:
        smoke_results.append(runner.smoke_test(**benchmark))
    smoke_successes = map(lambda r: r.print(), smoke_results)
    smoke_results_expanded = pd.DataFrame(map(lambda p: pd.Series(p.result), smoke_results))

    df["smoke_success"] = pd.Series(smoke_successes)
    df = pd.concat([df, smoke_results_expanded], axis=1)
    
    if args.output is not None:
        df.to_csv(args.output, index = False)
    else: 
        print(df)

if __name__ == "__main__":
    main()
