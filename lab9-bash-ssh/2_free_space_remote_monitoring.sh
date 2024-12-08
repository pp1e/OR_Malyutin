#!/bin/bash

REMOTE_SERVER=$1

THRESHOLD=$2

EMAIL=$3

DISK_USAGE=$(ssh $REMOTE_SERVER "df --output=pcent / | tail -n 1 | tr -d '[:space:]%'")

# Проверяем, если использование больше порога
if [ "$DISK_USAGE" -gt "$THRESHOLD" ]; then
    echo "Заканчивается свободное место на сервере $REMOTE_SERVER. Занято $DISK_USAGE% дискового пространства." | mail -s "Заканчивается свободное место" $EMAIL
fi

