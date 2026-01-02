#!/bin/bash
echo "==================System Health check=============="
date
uptime
df -h
free -m
systemctl is-system-running

echo "=================Health Check completed==========="


