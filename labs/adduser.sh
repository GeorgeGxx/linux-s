#!/bin/bash

username=$1

# If username is not empty
if [ -z "$username" ]; then
  echo You need to give the user name!
  echo "help: ./adduser [user_name]"
  exit 1
fi

# If the user exist
# -q doesn't show output result
# -w exact match
grep -qw "$username" /etc/passwd
grep_cmd=$($? -eq 0)

if $grep_cmd; then
  echo "the $username already exists"
  echo please choose another username
  exit 1
fi

echo Please provide user description
read -r description
read_cmd=$($? -eq 1)

if $read_cmd; then
  echo Please provide a description
  exit 1
fi

echo "Do you want to specify user ID (y/n)"
read -r answer

if [ "$answer" == y ]; then
  echo 'Please enter UID!'
  read -r uid

  grep -qw "$uid" /etc/passwd
  grep_cmd=$($? -eq 0)

  if $grep_cmd; then
    echo 'Error! This user ID already exist!'
    exit 1
  fi

  useradd "$username" -c "$description" -u "$uid"
else
  echo "The user id will be assigned automatically!"
  useradd "$username" -c "$description"
fi

echo "$username has been created!"
