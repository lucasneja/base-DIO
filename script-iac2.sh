#!/bin/bash

echo 'iniciando serviço de atualização'
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo 'iniciando carregamento do site'
cd  /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo 'carregando, exetuando'
