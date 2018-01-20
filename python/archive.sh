#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)
source $SCRIPT_DIR/common.sh

BASE_DIR=$(cd $(dirname $SCRIPT_DIR);pwd)
BASE_NAME=$(basename $BASE_DIR)

pushd $BASE_DIR/..
7z a $BASE_NAME.7z $BASE_NAME -x\!$BASE_NAME/python/$PACKAGE -x\!$BASE_NAME/*.retry
popd
