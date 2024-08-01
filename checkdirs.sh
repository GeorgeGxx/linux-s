#!/bin/bash
# Comments: Check if there is any directory that doesn't below to an user

cd /home
for DIR in *; do
  # Use grep to count number of user
  CHK=$(grep -c "/home/$DIR" /etc/passwd)

  # Check if there isn't any directory assigned to any user
  if [ $CHK -lt 1 ]; then
    echo "'$DIR' is NOT assigned to a user!"
  fi
done

