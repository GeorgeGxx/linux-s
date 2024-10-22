#!/bin/bash

FILES="/etc/passwd
/etc/group
/etc/shadow
/etc/nsswitch.conf
/etc/ssh/ssh_config
/etc/fake
"

for file in $FILES; do
  # If file doesn't exist
  if [ ! -e $file ]; then
    echo "${file} doesn't exist!"
  fi
done
