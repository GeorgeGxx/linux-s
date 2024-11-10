#!/bin/bash

for i in uno dos tres cuatro
do
  if [ $i == 'uno' ]; then
    echo "Counting $i time"
  else
    echo "Counting $i times"
  fi
done

echo "Rumba ella quiere su rumba! :)"
