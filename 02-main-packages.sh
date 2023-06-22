#!/bin/bash

## set to India IST timezone -- You can dissable it if needed
timedatectl set-timezone 'Asia/Kolkata'

##disable ipv6 as most time not required
sysctl -w net.ipv6.conf.all.disable_ipv6=1 1>/dev/null
sysctl -w net.ipv6.conf.default.disable_ipv6=1 1>/dev/null

#################
### Copying again repo and basic package if not install to get it install.
#################
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

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

CFG_HOSTNAME_FQDN=`hostname -f`
echo "postfix postfix/main_mailer_type select Internet Site" | debconf-set-selections
echo "postfix postfix/mailname string $CFG_HOSTNAME_FQDN" | debconf-set-selections
echo "iptables-persistent iptables-persistent/autosave_v4 boolean true" | debconf-set-selections
echo "iptables-persistent iptables-persistent/autosave_v6 boolean true" | debconf-set-selections
export DEBIAN_FRONTEND=noninteractive

DEBIAN_FRONTEND=noninteractive

apt update
apt -y upgrade
## few tools need for basic mangement
apt -y install chrony vim curl git software-properties-common dirmngr \
sshfs parted gdisk screen mc apt-transport-https lsb-release ca-certificates \
openssh-server iptraf-ng telnet iputils-ping debconf-utils pwgen xfsprogs \
iftop htop multitail net-tools elinks wget pssh jq inotify-tools vnstat \
arping dnsutils dos2unix ethtool sudo iptables postfix iptables-persistent \
build-essential rsyslog gnupg2 zip rar unrar catdoc unzip tar imagemagick ftp \
cloud-guest-utils poppler-utils tnef whois rsync mariadb-server automysqlbackup apache2  \
imagemagick cifs-utils tesseract-ocr tesseract-ocr-eng poppler-utils exiv2 \
libnet-dns-perl libmailtools-perl php-mail-mime sendemail augeas-lenses certbot \
dbconfig-common libapache2-mod-php libapache2-mod-php8.2 libarchive-zip-perl \
libaugeas0 libauthen-pam-perl libc-client2007e libdbd-mysql-perl libevent-2.1-7 \
libhashkit2 iperf libimage-exiftool-perl libio-pty-perl libmcrypt4  libmhash2 \
libmime-charset-perl libsombok3 libtext-template-perl libunicode-linebreak-perl \
libzip4 mcrypt memcached mlock mysqltuner perl-doc php php-apcu php-bcmath php-curl \
php-gd php-imagick php-imap php-intl php-ldap php-mailparse php-memcached php-mysql \
php-zip php8.2 php8.2-apcu php8.2-bcmath php8.2-curl php8.2-gd php8.2-igbinary \
php8.2-imagick php8.2-imap php8.2-intl php8.2-ldap php8.2-mailparse php8.2-memcached \
php8.2-msgpack php8.2-mysql php8.2-zip python3-acme python3-augeas python3-certbot \
python3-certbot-apache python3-configargparse python3-configobj python3-icu python3-josepy \
python3-openssl python3-parsedatetime python3-rfc3339 python3-tz python-certbot-doc \
python3-certbot-nginx dbconfig-mysql uw-mailutils libposix-strptime-perl libmcrypt-dev \
libencode-eucjpascii-perl libencode-hanextra-perl libpod2-base-perl libanyevent-perl \
libcache-memcached-perl libmemcached11 libyaml-perl pkg-php-tools  php-composer-ca-bundle \
libalgorithm-c3-perl libb-hooks-endofscope-perl libb-hooks-op-check-perl libclass-c3-perl \
libclass-c3-xs-perl libclass-data-inheritable-perl libclass-inspector-perl \
libclass-method-modifiers-perl libclass-singleton-perl libclass-xsaccessor-perl \
libdata-optlist-perl libdatetime-locale-perl libdatetime-perl libdatetime-timezone-perl \
libdevel-callchecker-perl libdevel-caller-perl libdevel-lexalias-perl 7zip \
libdevel-stacktrace-perl libdynaloader-functions-perl libeval-closure-perl \
libexception-class-perl qpsmtpd libfile-sharedir-perl libmodule-implementation-perl \
libmodule-runtime-perl bc libmro-compat-perl libnamespace-autoclean-perl \
libnamespace-clean-perl libpackage-stash-perl libpackage-stash-xs-perl libpadwalker-perl \
libparams-classify-perl libparams-util-perl libparams-validationcompiler-perl libreadonly-perl \
libref-util-perl libref-util-xs-perl librole-tiny-perl libspecio-perl libsub-exporter-perl \
libsub-exporter-progressive-perl libsub-identify-perl libsub-install-perl libsub-name-perl \
libsub-quote-perl libtry-tiny-perl libvariable-magic-perl php-composer-pcre \
php-composer-semver php-composer-class-map-generator php-composer-metadata-minifier \
nginx-full php-fpm php-pear unbound postfix-mysql dovecot-mysql dovecot-sieve \
dovecot-managesieved dovecot-imapd dovecot-pop3d dovecot-sieve dovecot-antispam \
dovecot-fts-xapian postfix-pcre postfwd  opendkim opendkim-tools xapian-tools recoll \
libdatetime-format-mail-perl fetchmail imapproxy spamassassin libgssapi-perl \
razor pyzor libencode-detect-perl libgeoip2-perl libnet-patricia-perl libbsd-resource-perl \
libencoding-fixlatin-perl libencoding-fixlatin-xs-perl liburi-encode-perl \
libtest-manifest-perl libbusiness-isbn-data-perl libfilesys-df-perl ncftp \
geoip-database libgeoip1 pax libmail-milter-perl clamav clamav-base \
clamav-daemon clamav-freshclam libclamav-client-perl  libclamav11 libgeo-ip-perl \
libconfig-any-perl libdbd-pg-perl libnet-subnet-perl geoip-database \
libmariadb-dev-compat libmariadb-dev

apt-get install dovecot-lmtpd  dovecot-sqlite dovecot-submissiond libcrypt-ssleay-perl 

## for WireGuard Tunnel VPN/SDN
#apt -y wireguard  wireguard-tools

## check for bakup
#apt install restic

## ftp server 
# apt -y proftpd

## IPMI-Tool for IKVM Management
# apt -y install ipmitool

## for proxmox/kvm better preformance
#apt -y install qemu-guest-agent

## if on Consle need Mouse to use for copy paste use gpm
#apt -y install gpm

# for getting CPU temp on main-host and other info
#apt -y install lm-sensors

a2enmod actions > /dev/null 2>&1
a2enmod proxy_fcgi > /dev/null 2>&1
a2enmod alias > /dev/null 2>&1
a2enmod rewrite > /dev/null 2>&1
a2enmod ssl > /dev/null 2>&1
a2enmod actions > /dev/null 2>&1
a2enmod include > /dev/null 2>&1
a2enmod headers > /dev/null 2>&1
a2enmod proxy_http > /dev/null 2>&1
#a2enmod auth_digest > /dev/null 2>&1
#a2enmod cgi > /dev/null 2>&1
#a2enmod fcgid > /dev/null 2>&1
#a2enmod suexec > /dev/null 2>&1
#a2enmod dav_fs > /dev/null 2>&1
#a2enmod dav > /dev/null 2>&1

systemctl stop apache2
## usefull for nginx imap & smtp proxy and also for mail-selective-auth
## unbound for dns-local cache specialy for mail-dns domain cache
#apt -y install nginx-full php-fpm php-pear unbound
systemctl stop php8.2-fpm.service > /dev/null 2>&1
systemctl disable php8.2-fpm.service > /dev/null 2>&1
## keep fpm disabled default -- useful for very high load web-server
systemctl stop php.fpm  > /dev/null 2>&1
systemctl disable php-fpm > /dev/null 2>&1
#To enable PHP 8.2 FPM in Apache2 do:
#a2enmod proxy_fcgi setenvif
#a2enconf php8.2-fpm

### changing timezone to Asia Kolkata
sed -i "s/;date.timezone =/date\.timezone \= \'Asia\/Kolkata\'/" /etc/php/8.2/apache2/php.ini
sed -i "s/;date.timezone =/date\.timezone \= \'Asia\/Kolkata\'/" /etc/php/8.2/cli/php.ini
sed -i "s/;date.timezone =/date\.timezone \= \'Asia\/Kolkata\'/" /etc/php/8.2/fpm/php.ini
##disable error
sed -i "s/error_reporting = E_ALL & ~E_DEPRECATED & ~E_STRICT/error_reporting = E_ERROR/" /etc/php/8.2/cli/php.ini
sed -i "s/error_reporting = E_ALL & ~E_DEPRECATED & ~E_STRICT/error_reporting = E_ERROR/" /etc/php/8.2/fpm/php.ini
sed -i "s/error_reporting = E_ALL & ~E_DEPRECATED & ~E_STRICT/error_reporting = E_ERROR/" /etc/php/8.2/apache2/php.ini
#some more tunning..
sed -i "s/memory_limit = 128M/memory_limit = 512M/" /etc/php/8.2/apache2/php.ini
sed -i "s/post_max_size = 100M/post_max_size = 100M/" /etc/php/8.2/apache2/php.ini
sed -i "s/upload_max_filesize = 2M/upload_max_filesize = 50M/" /etc/php/8.2/apache2/php.ini

## install insstead of systemd-timesyncd for better time sync
#apt -y  install chrony  2>/dev/null 1>/dev/null
## -x option added to allow in LXC
echo 'DAEMON_OPTS="-F 1 -x "' >  /etc/default/chrony
systemctl restart chrony

#Setting rc.local, perl, bash, vim basic default config and IST time sync NTP

/bin/cp -pR /etc/rc.local /usr/local/src/old-rc.local-`date +%s` 2>/dev/null
## create with default IPV6 disabled 
touch /etc/rc.local 
printf '%s\n' '#!/bin/bash'  | tee -a /etc/rc.local 1>/dev/null
echo "#sysctl -w net.ipv6.conf.all.disable_ipv6=1" >>/etc/rc.local
echo "#sysctl -w net.ipv6.conf.default.disable_ipv6=1" >> /etc/rc.local
echo "sysctl vm.swappiness=0" >> /etc/rc.local
echo "exit 0" >> /etc/rc.local
chmod 755 /etc/rc.local
## need like autoexe bat on startup
echo "[Unit]" > /etc/systemd/system/rc-local.service
echo " Description=/etc/rc.local Compatibility" >> /etc/systemd/system/rc-local.service
echo " ConditionPathExists=/etc/rc.local" >> /etc/systemd/system/rc-local.service
echo "" >> /etc/systemd/system/rc-local.service
echo "[Service]" >> /etc/systemd/system/rc-local.service
echo " Type=forking" >> /etc/systemd/system/rc-local.service
echo " ExecStart=/etc/rc.local start" >> /etc/systemd/system/rc-local.service
echo " TimeoutSec=0" >> /etc/systemd/system/rc-local.service
echo " StandardOutput=tty" >> /etc/systemd/system/rc-local.service
echo " RemainAfterExit=yes" >> /etc/systemd/system/rc-local.service
## featured Removed
###echo " SysVStartPriority=99" >> /etc/systemd/system/rc-local.service
echo "" >> /etc/systemd/system/rc-local.service
echo "[Install]" >> /etc/systemd/system/rc-local.service
echo " WantedBy=multi-user.target" >> /etc/systemd/system/rc-local.service

systemctl enable rc-local
systemctl start rc-local

## make cpan auto yes for pre-requist modules of perl
(echo y;echo o conf prerequisites_policy follow;echo o conf commit)|cpan 1>/dev/null

#Disable vim automatic visual mode using mouse
echo "\"set mouse=a/g" >  ~/.vimrc
echo "syntax on" >> ~/.vimrc
##  for  other new users
echo "\"set mouse=a/g" >  /etc/skel/.vimrc
echo "syntax on" >> /etc/skel/.vimrc

## centos 7 like bash ..for all inteactive 
echo "" >> /etc/bash.bashrc
echo "alias cp='cp -i'" >> /etc/bash.bashrc
echo "alias l.='ls -d .* --color=auto'" >> /etc/bash.bashrc
echo "alias ll='ls -l --color=auto'" >> /etc/bash.bashrc
echo "alias ls='ls --color=auto'" >> /etc/bash.bashrc
echo "alias mv='mv -i'" >> /etc/bash.bashrc
echo "alias rm='rm -i'" >> /etc/bash.bashrc
echo "export EDITOR=vi" >> /etc/bash.bashrc
echo "export LC_CTYPE=en_US.UTF-8" >> /etc/bash.bashrc
echo "export LC_ALL=en_US.UTF-8" >> /etc/bash.bashrc

## for using crontab via vi editor
export EDITOR=vi

## etc-backup and postfix pfHandle
/bin/cp -p files/extra-files/etc-config-backup.sh /bin/
/bin/cp -p files/extra-files/pfHandle /bin/
## safe backup
files/extra-files/etc-config-backup.sh
## copy fw default settings 
#/bin/cp -pR files/rootdir/* /
systemctl restart unbound 1>/dev/null 2>/dev/null
systemctl stop nginx
systemctl restart  apache2
systemctl restart  cron
systemctl restart  mariadb
##disable this program as not needed
systemctl stop ModemManager 1>/dev/null 2>/dev/null
systemctl disable ModemManager 1>/dev/null 2>/dev/null
systemctl stop wpa_supplicant 1>/dev/null 2>/dev/null
systemctl disable wpa_supplicant 1>/dev/null 2>/dev/null

# use only for heavy load server via Service or use nginx 
systemctl stop imapproxy.service 2>/dev/null
systemctl disable imapproxy.service 2>/dev/null

sed -i "s/#RateLimitIntervalSec=30s/RateLimitIntervalSec=0/"  /etc/systemd/journald.conf
sed -i "s/#RateLimitBurst=10000/RateLimitBurst=0/"  /etc/systemd/journald.conf
systemctl restart systemd-journald


sed -i "s/SOCKET\=local\:\$RUNDIR\/opendkim.sock/#SOCKET\=local\:\$RUNDIR\/opendkim.sock/" /etc/default/opendkim
sed -i "s/#SOCKET\=inet\:12345\@localhost/SOCKET\=inet\:12345\@localhost/" /etc/default/opendkim
/lib/opendkim/opendkim.service.generate
systemctl daemon-reload



echo `hostname -f` > /etc/mailname
## adding 89 so that migration from qmailtoaster setup is easier.
groupadd -g 89 vmail 2>/dev/null
useradd -g vmail -u 89 -d /home/powermail vmail 2>/dev/null
mkdir /home/powermail 2>/dev/null
chown -R vmail:vmail /home/powermail

## if ZFS is used for Storage specailly for Archive Server
#DEBIAN_FRONTEND=noninteractive apt -y install zfs-dkms zfsutils-linux zfs-zed
#apt -y install dpkg-dev linux-headers-$(uname -r) linux-image-amd64



echo " Please Logout and login again so that bashrc is reloaded for you"
