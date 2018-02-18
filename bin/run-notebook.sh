#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)
BASE_DIR=$(dirname $SCRIPT_DIR)

. $BASE_DIR/python/venv/bin/activate

jupyter notebook --config=$BASE_DIR/notebook/jupyter_notebook_config.py
