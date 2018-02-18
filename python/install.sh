#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)

$SCRIPT_DIR/make-venv.sh
source $SCRIPT_DIR/venv/bin/activate

pip install -r $SCRIPT_DIR/requirements.in.txt
pip freeze > $SCRIPT_DIR/requirements.txt
pip wheel -r $SCRIPT_DIR/requirements.txt -w $SCRIPT_DIR/wheels
