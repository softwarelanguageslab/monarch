#!/usr/bin/env bash
# Run the cover tool on a Racket program and write line coverage to
# <outdir>/coverage.coverage.
#
# Usage: run-coverage.sh <file.rkt> <outdir> [timeout-seconds]
#
# timeout-seconds defaults to 30. Use 0 to disable.

set -euo pipefail

if [[ $# -lt 2 ]]; then
  echo "Usage: $0 <file.rkt> <outdir> [timeout-seconds]" >&2
  exit 1
fi

FILE="$1"
OUTDIR="$2"
TIMEOUT="${3:-30}"

if [[ "$TIMEOUT" -eq 0 ]]; then
  raco cover -f sexp -d "$OUTDIR" "$FILE"
else
  # Exit code 124 means the timeout fired, which is expected for long-running
  # actor programs — cover dumps coverage before the program finishes.
  timeout "$TIMEOUT" raco cover -f sexp -d "$OUTDIR" "$FILE" || [[ $? -eq 124 ]]
fi

echo "Coverage written to $OUTDIR/coverage.coverage"
