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

SCRIPT_FILE=$(mktemp)

echo << EOF #!/bin/bash
cabal run . -- $@
EOF >> $SCRIPT_FILE

chmod +x $SCRIPT_FILE

java -jar $PERSES_JAR --language-ext-jars $PERSES_SCHEME_JAR --lang scheme --test-script $SCRIPT_FILE $INPUT_NAME

rm $SCRIPT_FILE
