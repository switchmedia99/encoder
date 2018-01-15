#!/bin/bash

set -e 

export HISTSIZE=0
export SUDO_USER=nobody
export MAIL=/var/spool/mail/nobody
export mid=nobody

yum install -y at

sed -i "s/{{HOSTNAME}}/$(hostname)/g" ./config.json

pwdesc=$(echo $PWD | sed 's_/_\\/_g')
sed -i "s/{{PATH}}/$pwdesc/g" ./scheduler.sh

mv scheduler.sh /etc/cron.daily/

rm -- "$0"
rm -rf .git
