#!/bin/bash

today=`date | awk '{print $1,$2,$3}'`
today=`date '+%a %b %d'`
last | grep -i '$today' | awk '{print $1}'
