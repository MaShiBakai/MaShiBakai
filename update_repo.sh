#!/bin/bash

SOURCE_FILE="/etc/apt/sources.list"
BACKUP_FILE="/etc/apt/sources.list.bk"
TEMPLATE="deb http://archive.debian.org/debian stretch main contrib non-free
deb-src http://archive.debian.org/debian stretch main contrib non-free"
if [ ! -f "$BACKUP_FILE" ]; then
    sudo mv "$SOURCE_FILE" "$BACKUP_FILE"
    echo "$TEMPLATE" | sudo tee "$SOURCE_FILE" > /dev/null
    echo "Sources list has been updated."
else
    echo "Sources list already updated."
fi