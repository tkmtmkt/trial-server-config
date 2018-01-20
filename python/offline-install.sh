#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)
source $SCRIPT_DIR/common.sh

python -m venv $SCRIPT_DIR/$PACKAGE
source $SCRIPT_DIR/$PACKAGE/bin/activate

pip install --no-deps --no-index -r $SCRIPT_DIR/requirements.txt -f $SCRIPT_DIR/pkgs
