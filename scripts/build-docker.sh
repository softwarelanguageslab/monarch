#!/bin/bash

# TODO: add option to cache Cabal dependnecies
# TODO: add option to pass optimisations options

MONARCH_DIR=$( realpath "$0"  )
MONARCH_DIR=$(dirname "$MONARCH_DIR")/..

if [ -z $1 ] ; then
  echo "Please provide the Haskell package to build as a path relative to the project directory"
  echo "Usage: "
  echo "$0 PACKAGE"`
  cat << EOF
This scripts builds the given package inside a Docker container. Please use the provided Dockerfile to build a Docker image for the analysis package.
  EOF
  exit 1
fi

PACKAGE=$1
BUILD_SCRIPT=$(mktemp) 


cat << EOF >> $BUILD_SCRIPT
#!/bin/bash

cabal update
cabal build --ghc-options=" -fexpose-all-unfoldings  -fspecialise-aggressively -fspecialise -flate-specialise -O2 -threaded"  --enable-executable-static
EOF

chmod +x $BUILD_SCRIPT

docker run -v $MONARCH_DIR:/code --mount type=bind,src=$BUILD_SCRIPT,dst=/build.sh,ro -w /code/$PACKAGE -it haskell:9.6.6 /build.sh
