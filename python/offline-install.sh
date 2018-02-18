#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)

$SCRIPT_DIR/make-venv.sh
source $SCRIPT_DIR/venv/bin/activate

pip install --no-deps --no-index -r $SCRIPT_DIR/requirements.txt -f $SCRIPT_DIR/wheels
