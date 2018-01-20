#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)

$SCRIPT_DIR/venv.sh
source $SCRIPT_DIR/venv/bin/activate

pip install -r $SCRIPT_DIR/requirements.txt
pip freeze > $SCRIPT_DIR/requirements_lock.txt
pip wheel -r $SCRIPT_DIR/requirements_lock.txt -w $SCRIPT_DIR/pkgs
