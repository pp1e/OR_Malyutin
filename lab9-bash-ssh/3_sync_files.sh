#!/bin/bash

LOCAL_DIR=$1
REMOTE_DIR="$2:$3"
EXCLUDE_PATTERN="*log*"

rsync -avz --exclude="$EXCLUDE_PATTERN" $LOCAL_DIR $REMOTE_DIR

