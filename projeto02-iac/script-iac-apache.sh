#!/bin/bash

# Atualizar o servidor

echo "Updating server"
apt-get update
apt-get upgrade -y

# Instalar o apache2

echo "Installing apache"
apt-get install apache2 -y

# Instalar o unzip

echo "Installing unzip"
apt-get install unzip -y

# Baixar aplicacao disponivel no endereco 
# https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 
# no diretorio tmp

echo "Downloading files and copying to application"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 

# Copiar arquivos da aplicacao no diretorio padrao do apache

unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
