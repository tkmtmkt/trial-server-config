#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)
BASE_DIR=$(dirname $SCRIPT_DIR)
BASE_NAME=$(basename $SCRIPT_DIR)
ARCHIVE=$BASE_NAME.tar.gz

tar czf $ARCHIVE -C $BASE_DIR \
    --exclude=$BASE_NAME/$ARCHIVE \
    --exclude=$BASE_NAME/python/venv \
    --exclude=$BASE_NAME/*.retry \
    $BASE_NAME
