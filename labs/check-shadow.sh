#!/bin/bash

shadow_file=/etc/shadow
ls $shadow_file
error=$?

if [ $error -eq 0 ]; then
  cat $shadow_file 2> /dev/null

  if [ $? -eq 1 ]; then
    echo "Sorry you don't have permissions to read the file"
  fi
else
  echo "The file $shadow_file doesn't exist!"
fi

