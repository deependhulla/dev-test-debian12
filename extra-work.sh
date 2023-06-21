#!/bin/sh


files/extra-files/etc-config-backup.sh
## copy fw default settings 
#/bin/cp -pR files/rootdir/* /

systemctl restart unbound 1>/dev/null 2>/dev/null
systemctl stop nginx
systemctl restart  apache2
systemctl restart  cron
systemctl restart  mariadb


echo " Please Logout and login again so that bashrc is reloaded for you"
