#!/usr/bin/env nu

const simpleactor_dir = path self ../

# Runs the preprocessor on the benchmark programs specified in
# the given CSV file. Reads from the "original" column and outputs
# the final preprocessed file to the path in the "translated" 
# column.
def "main preprocess" [ 
    input_csv : string  # The path to the input CSV file
] {
    let programs = (cat $input_csv | from csv --separator ";")
    for program in $programs {
      cat $program.original | racket $simpleactor_dir/racket/run/translate-full.rkt > $program.translated
    }
    
    return programs | select translated
}

def main [] {
  echo "Running full pipeline"
}
