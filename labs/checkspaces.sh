#!/bin/bash

space_used=60

df -h | egrep -v "loop|tmpfs|cdrom" | awk '0+$5 >= 70 {print}'

echo "------"

DISKS=`df -h | \
  egrep -v "loop|tmpfs|udev" | \
  tail -n+2 | \
  awk '{print $5}' | \
  cut -d'%' -f1`

for d in $DISKS; do
  if [ $d -gt $space_used ]; then
    echo "(Alert) Used space is more than ${space_used}%!"
    echo "-> `df -h | grep $d`"
  fi
done
