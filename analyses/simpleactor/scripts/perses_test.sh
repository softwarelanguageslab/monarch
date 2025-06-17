#!/bin/bash

## Delta debugging of some framework functionality
## passes the command parameter, except the first one through the `simpleactor`
## binary when executed.

INPUT_NAME=$1
shift

if [ -z "${PERSES_JAR}" ] ; then
  echo "PERSER_JAR is not set"
  echo "Please provide the location of the Perses JAR as the PERSES_JAR environment variable"
  exit 1
fi

if [ -z "${PERSES_SCHEME_JAR}" ] ; then
  echo "PERSES_SCHEME_JAR is not set"
  echo "Please provide the location of the Scheme Grammar JAR used in Perses"
  exit 1
fi

TEST_DIR=$(mktemp -d)
SCRIPT_FILE="${TEST_DIR}/run.sh"
MONARCH_DIR=$(dirname "$(realpath $0)")
TEST_FILE="${TEST_DIR}/test.scm"

cp $INPUT_NAME $TEST_FILE

cat << EOF > $SCRIPT_FILE
#!/bin/bash
# set -o pipefail
set -o nounset

TEST_DIR=\$(dirname "\$(realpath \$0)")
cd $MONARCH_DIR/../
gtimeout 10 cabal run . -- precision -i \$TEST_DIR/test.scm --no-translate 2>&1 | grep "missing: fromList [685:48-685:48]"
EOF

chmod +x $SCRIPT_FILE

java -jar $PERSES_JAR --language-ext-jars $PERSES_SCHEME_JAR --lang scheme --test-script $SCRIPT_FILE -i $TEST_FILE 

mv $TEST_DIR "perses_out_$(date -Iseconds)"
