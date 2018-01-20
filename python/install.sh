#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)
source $SCRIPT_DIR/common.sh

python -m venv $SCRIPT_DIR/$PACKAGE
source $SCRIPT_DIR/$PACKAGE/bin/activate

pip install -r $SCRIPT_DIR/requirements.txt
pip freeze > $SCRIPT_DIR/requirements_lock.txt
pip wheel -r $SCRIPT_DIR/requirements_lock.txt -w $SCRIPT_DIR/pkgs
