#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)
BASE_DIR=$(dirname $SCRIPT_DIR)

export VIRTUAL_ENV=$BASE_DIR/python/venv
/bin/bash --rcfile $BASE_DIR/python/bashrc
