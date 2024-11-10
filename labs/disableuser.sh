#!/bin/bash
# Disable users

# Better way to disable users
lastlog | tail -n+2 | grep 'test' | awk '{print $1}' | xargs -I{} usermod -L {}

# Another way to disable users but no efficient
#USERS=`lastlog | tail -n+2 | grep 'test' | awk '{print $1}'`

#for user in USERS; do
  #usermod -L user
#done
