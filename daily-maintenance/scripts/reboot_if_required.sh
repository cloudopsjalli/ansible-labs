#!/bin/bash
echo "=========Reboot check======"
if [ -f /var/run/reboot-required ]; then
    echo "Reboot required. Rebooting now...."
    reboot
else 
   echo "No reboot required"
fi
