#!/usr/bin/env nu

const simpleactor_dir = path self ../
let simpleactor_exe = (cd $simpleactor_dir ; cabal exec which simpleactor-exe)

# Upper-limit for how much a repeated benchmark run of a single program 
# could be executed for.
const max_time = 7200 # (here 2 hours)

# Preprocess the files in the given table. Assumes that the input table
# has columns "original" and "translated". Returns the same table as the
# input table.
export def preprocess [] : table -> table {
  let programs = $in
  for program in $programs {
    let stats_path = ($program.translated | path parse | update extension "stats" | path join)
    $program | format pattern "Translating {original} into {translated}" | print --stderr
    let result = racket ($simpleactor_dir | path join racket/run/translate-full.rkt) $program.original | complete
    $result.stderr | save $stats_path --force
    $result.stdout | save $program.translated --force
  }
  
  return $programs
}

# Runs the files in the given table, and checks whether they execute correctly.
# Assumes that the input table has a column called "translated". Outputs the 
# same output table with an additional column named "executed_success".
export def run [] : table -> table {
  let programs = $in
  mut output = []
  for program in $programs {
    $program | format pattern "Running {original} using {translated}" | print --stderr
    let result = (timeout 5 racket $program.translated | complete)
    let return_code = $result.exit_code
    if $return_code == 124 or $return_code == 0 {
      $output = $output | append [ true ]
    } else {
      $output = $output | append [ $program.translated =~ '\.fail..*$' ]
    }
  }

  return ($programs | merge ($output | wrap executed_success))
}

# Run the analysis on the given table, checks whether the analysis with a non-zero 
# exit code, and outputs the original table with "analysisResult". "analysisResult"
# takes on of the following values:
#
# - FAIL: which indicates that benchmark exited with a non-zero exit code (excluding timeouts)
# - TIMEOUT: which indicates that the benchmark was killed because of a timeout 
# - OOM: which indicates that the benchmark was killed because of an out-of-memory error
# - a path: path to the results of the benchmark if executed successfully
export def benchmark [ output_dir : path ] : table -> table {
  let programs = $in
  mut output = []
  for program in $programs {
    let output_file_name = $program.original | path split | str join '_' | path parse | update extension "json"
    let output_path = $output_dir | path join ($output_file_name | path join)
    $program | format pattern "Analyzing {original} using {translated}" | print --stderr
    let result = (timeout $max_time $simpleactor_exe benchmark -f $program.translated -o $output_path --no-translate | tee --stderr { print --stderr } | complete)
    let status = match $result.exit_code {
      124 => "TIMEOUT"
      0   => $output_path
      _   => {
        $result.stderr | save ($output_path | path parse | update extension "err" | path join)
        "FAIL"
      }
    }

    $output = $output | append [ $status ]
  }

  let $out = ($programs | merge ($output | wrap "analysisResult"))
  return $out
}

# Runs the preprocessor on the benchmark programs specified in
# the given CSV file. Reads from the "original" column and outputs
# the final preprocessed file to the path in the "translated" 
# column.
def "main preprocess" [ 
    input_csv : string  # The path to the input CSV file
] : nothing -> table {
    return (cat $input_csv | from csv --separator ";" | preprocess )
}

# Runs the files in the "translated" column of the input CSV file
def "main run" [
    input_csv : string # The path to the input CSV file
] : nothing -> table {
    return (cat $input_csv | from csv --separator ";" | run )
}

# Run the analysis on the files in the "translated" column of the input CSV file
#
# Will create a directory with the current timestamp in `output_dir` and save 
# all analysis results there as well as a summary table (in csv)
def "main benchmark" [
    input_csv: path    # The path to the input CSV file
    output_dir : path  # The path to the output directory
] : nothing -> table {
    let timestamped_output = $output_dir | path join (date now | format date "%+")
    mkdir $timestamped_output
    let result = cat $input_csv | from csv --separator ";" | benchmark $timestamped_output 
    $result | to csv --separator ";" | save ($timestamped_output | path join "summary.csv")
    return result
}

# Returns the path to the compiled executable of the analysis
def "main exe" [] {
    return $simpleactor_exe
}


def main [] {
  echo "Running full pipeline"
}
