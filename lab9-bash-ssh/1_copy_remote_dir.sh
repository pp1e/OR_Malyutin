#!/bin/bash

REMOTE_SERVER=$1
REMOTE_DIR=$2
ARCHIVE_NAME="$(date +%Y%m%d%H%M%S).tar.gz"

echo "Копирование директории $REMOTE_DIR с сервера $REMOTE_SERVER..."
ssh $REMOTE_SERVER "tar -czf ~/$ARCHIVE_NAME -C $(dirname $REMOTE_DIR) $(basename $REMOTE_DIR)"

scp $REMOTE_SERVER:~/$ARCHIVE_NAME .

ssh $REMOTE_SERVER "rm ~/$ARCHIVE_NAME"

mkdir result
tar -xzf $ARCHIVE_NAME -C result

echo "Завершено"

