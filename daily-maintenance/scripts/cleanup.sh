#!/bin/bash
echo "============Disk Cleanup ========="
date
apt-get autoremove -y
apt-get autoclean -y
echo "===========Cleanup completed======"
