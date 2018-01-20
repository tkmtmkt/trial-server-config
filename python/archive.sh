#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)
source $SCRIPT_DIR/common.sh

BASE_DIR=$(cd $(dirname $SCRIPT_DIR);pwd)
ARCHIVE=$(basename $BASE_DIR)

pushd $BASE_DIR/..
7z a $ARCHIVE.7z $ARCHIVE -x\!$ARCHIVE/python/$PACKAGE
popd
