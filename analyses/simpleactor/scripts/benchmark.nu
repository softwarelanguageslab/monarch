#!/usr/bin/env nu

const simpleactor_dir = path self ../

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


def main [] {
  echo "Running full pipeline"
}
