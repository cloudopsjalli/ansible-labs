#!/bin/bash


LOG_DIR="/var/log/myapp"
ARCHIVE_DIR="/var/log/myapp/archive"
TIMESTAMP=$(date +%F_%H-%M-%S)

mkdir -p "$ARCHIVE_DIR"

tar -czf "$ARCHIVE_DIR/myapp_logs_$TIMESTAMP.tar.gz" "$LOG_DIR"/*.log
