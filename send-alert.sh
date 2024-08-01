#!/bin/bash

IT="cmauriciop@yahoo.com.mx,cmauriciop@gmail.com"

if [ -s /tmp/syslog-filtered-msgs.log ]; then
  cat /tmp/syslog-filtered-msgs.log | sort -u | mail -s 'Syslog Alert Messages!' $IT
  rm /tmp/syslog-filtered-msgs.log
fi

