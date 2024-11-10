#!/bin/bash

for filename in hola*.*; do
  mv $filename ${filename%.txt}.none
done
