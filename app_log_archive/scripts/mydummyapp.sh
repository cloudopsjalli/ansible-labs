#!/bin/bash



LOG_DIR="/var/log/myapp"
LOG_FILE="$LOG_DIR/myapp.log"

mkdir -p "$LOG_DIR"

while true
do

  echo "$(date '+%Y-%m-%d %H:%M:%S') INFO MyApp Running"  >> "$LOG_FILE"

  sleep 2
done
