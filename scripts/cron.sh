#!/bin/bash
clear
mkdir -p /home/nuevo
cp -p /etc/passwd /home/nuevo
touch /etc/cron.d/anacron
cp -p /etc/cron.d/anacron /home
cp -p /etc/crontab /home
mv /home/crontab /home/nuevo/anacromico
rm /home/nuevo/passwd
mv /home/nuevo /home/viejo
