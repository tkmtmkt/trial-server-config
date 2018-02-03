#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)
BASE_DIR=$(cd $(dirname $SCRIPT_DIR);pwd)
BASE_NAME=$(basename $BASE_DIR)

python -m venv --clear --prompt $BASE_NAME $SCRIPT_DIR/venv
