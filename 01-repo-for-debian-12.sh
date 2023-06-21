#!/bin/sh

# for Debian 12

## backup existing repo by copy just for safety
mkdir -p /opt/old-config-backup/ 2>/dev/null
/bin/cp -pR /etc/apt/sources.list /opt/old-config-backup/old-sources.list-`date +%s`
echo "" >  /etc/apt/sources.list

echo "deb http://deb.debian.org/debian/ bookworm main non-free-firmware contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian/ bookworm main non-free-firmware contrib non-free" >> /etc/apt/sources.list
echo "deb http://security.debian.org/debian-security bookworm-security main non-free-firmware contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://security.debian.org/debian-security bookworm-security main non-free-firmware contrib non-free" >> /etc/apt/sources.list
echo "deb http://deb.debian.org/debian/ bookworm-updates main non-free-firmware contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian/ bookworm-updates main non-free-firmware contrib non-free" >> /etc/apt/sources.list

## set to India IST timezone -- You can dissable it if needed
timedatectl set-timezone 'Asia/Kolkata'


apt update
apt -y upgrade
## few tools need for basic 
apt -y install vim  openssh-server screen net-tools git mc
## install insstead of systemd-timesyncd for better time sync
apt -y  install chrony  2>/dev/null 1>/dev/null
## -x option added to allow in LXC
echo 'DAEMON_OPTS="-F 1 -x "' >  /etc/default/chrony
systemctl restart chrony

#Disable vim automatic visual mode using mouse
echo "\"set mouse=a/g" >  ~/.vimrc
echo "syntax on" >> ~/.vimrc

# Reset
Color_Off='\033[0m'       # Text Reset
On_IRed='\033[0;101m'     # Red

echo $White $On_IRed 
echo "IS THE HOSTNAME CORRECT !!! : "
 hostname -f
echo "IS DATE AND TIME CORRECT !!! : ";
 date
echo "IF NOT SET IT PROPERLY SET IT."
echo "...............................";
echo $Color_Off

