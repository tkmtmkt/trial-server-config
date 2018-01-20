#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)

export VIRTUAL_ENV=$SCRIPT_DIR/venv
/bin/bash --rcfile $SCRIPT_DIR/bashrc
