#!/bin/bash


Mem_Threshold=80
mem_total=$(free -m | grep -E "^Mem" | awk '{print $2}')

mem_used=$(free -m | grep -E "^Mem" | awk '{print $3}')

echo "$mem_total"
echo "$mem_used"

mem_usage=$((mem_used *100 /mem_total))

echo "Memory usage is ${mem_usage}% (used: $mem_used/total: $mem_total)"

if [ "$mem_usage" -ge "$Mem_Threshold" ] ; then
   echo " WARNING: Memory usage is high (${mem_usage}%)"
fi
