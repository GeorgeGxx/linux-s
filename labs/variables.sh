#!/bin/bash

# Purpose: run different commands
# Date: 30/03/2021
# Modification: 30/03/2021
# Comments:

current_dir=`pwd`
username=`whoami`
list_files=ls
today=date
get_calendar='cal 2019'

echo 'Running variables'
echo
echo "The current directory is: $current_dir"
echo "User who executed the script: $username"
$list_files
$today
$get_calendar
