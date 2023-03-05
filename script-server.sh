#!/bin/bash
echo " atualizando o servidor ******************"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
apt-get install wget -y
apt-get install openssh-server -y
apt-get install git -y

echo "baixando arquivos  do git ****************"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip   
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/


