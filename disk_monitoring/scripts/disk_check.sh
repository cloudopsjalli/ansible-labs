#!/bin/bash


THRESHOLD=80

echo " checking the disk information"

df -h | grep -E "^/dev" | while read line; do 

 usage=$(echo $line | awk '{print$5}' | tr -d '%')

 filesystem=$(echo $line | awk '{print$1}')

 echo "filesystem is $filesystem and usage is $usage%"


 if [ "$usage" -ge "$THRESHOLD" ]; then
  echo "WARNING $filesystem is at ${usage}% usage"
 fi

done
