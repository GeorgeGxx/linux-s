#!/bin/bash

echo "Type the ip address to delete:"
read device_ip

sed -i '/'$device_ip'/d' /abs_path/
