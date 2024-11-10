#!/bin/bash

tail -fn0 /var/log/syslog | while read line
do
  echo $line | egrep -i 'refused|invalid|error|fail|lost|shut|down|offline'
  if [ $? -eq 0 ]; then
    echo $line | tee /tmp/syslog-filtered-msgs.log
  fi
done
