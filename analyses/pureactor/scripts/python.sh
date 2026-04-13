#!/bin/bash

SCRIPT_DIR="$(realpath "$(dirname "${BASH_SOURCE[0]}")")"
VENV_DIRECTORY=$SCRIPT_DIR/.venv

if [ -d "$VENV_DIRECTORY" ]; then
    echo "Python Environment already initialized, skipping."
else
    python3 -m venv $VENV_DIRECTORY
fi

source $VENV_DIRECTORY/bin/activate
pip3 install -r $SCRIPT_DIR/requirements.txt
python3 $@
