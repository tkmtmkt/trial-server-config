#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)

python -m venv $SCRIPT_DIR/ansible
source $SCRIPT_DIR/ansible/bin/activate
pip install --no-deps --no-index -r $SCRIPT_DIR/requirements.txt -f $SCRIPT_DIR/pkgs
