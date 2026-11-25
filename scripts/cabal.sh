#!/bin/sh
# Runs cabal inside a GHC 9.10.3 container, from the current directory.
# Usage: ./scripts/cabal.sh build all
root=$(realpath "$(dirname "$0")/..")
exec podman run --rm -i -v "$root:$root" -v monarch-cabal:/cabal -e CABAL_DIR=/cabal \
  -w "$PWD" docker.io/library/haskell:9.10.3 sh -c '
  export PATH=/cabal/bin:$PATH
  [ -x /cabal/bin/hspec-discover ] ||
    (cd / && cabal update && cabal install hspec-discover --installdir=/cabal/bin) >&2
  exec cabal "$@"' cabal "$@"
