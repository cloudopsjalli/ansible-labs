#!/bin/bash

echo "check the ram information"

THRESHOLD=80

usage_ram="$(free -m | grep -E "^Mem" | awk '{print$3}')"

total_ram="$(free -m | grep -E "^Mem" | awk '{print$2}')"


percent_usage=$((usage_ram * 100/total_ram))

echo "Total percent usage of ram is "$usage_ram" *100/"$total_ram" =  "$percent_usage"%"


if [ "$percent_usage" -ge "$THRESHOLD" ]; then
   echo "WARNING the ram utilization crossed threshold value $"percent_usage"%"
fi





