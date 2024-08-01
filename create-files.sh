#!/bin/bash

filename=$1
max=$2

for i in $(seq 1 $max); do
  touch ${filename}-${i}.txt
done
