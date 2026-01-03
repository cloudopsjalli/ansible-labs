#!/bin/bash


THRESHOLD=80
email="admin@example.com"


df -h | grep -E "^/dev" |  while read line; do 

  usage=$(echo $line | awk '{print $5}' | tr -d '%')
  filesystem=$(echo $line | awk '{print $1}')

  echo "Filesystem is $filesystem and usage is $usage%"

  if [ "$usage" -ge "$THRESHOLD" ]; then
    echo "WARNING: $filesystem is at ${usage}% usage"
  fi

done
