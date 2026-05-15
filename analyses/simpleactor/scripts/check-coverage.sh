#!/usr/bin/env bash
# Run end-to-end coverage comparison for a SimpleActor Racket program.
#
# Collects Racket runtime coverage and static analysis coverage, then
# compares them to check whether the analysis visits at least all lines
# covered by Racket.
#
# Usage: check-coverage.sh <file.rkt> <outdir>

set -euo pipefail

if [[ $# -ne 2 ]]; then
  echo "Usage: $0 <file.rkt> <outdir>" >&2
  exit 1
fi

FILE="$1"
OUTDIR="$2"

mkdir -p "$OUTDIR"

# Step 1: Racket runtime coverage (5 second timeout)
bash "$(dirname "$0")/run-coverage.sh" "$FILE" "$OUTDIR" 5

# Step 2: Static analysis coverage
cabal run simpleactor-exe -- analyze2 --file "$FILE" --no-translate -o "$OUTDIR/" 2>&1 \
  | grep '^\[coverage\]' \
  | sed 's/^\[coverage\] //' \
  | sort -u > "$OUTDIR/analysis.coverage"

# Step 3: Compare
cabal run simpleactor-exe -- compare-coverage \
  --analysis-coverage "$OUTDIR/analysis.coverage" \
  --racket-coverage   "$OUTDIR/coverage.coverage"
