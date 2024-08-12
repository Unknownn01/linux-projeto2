#!/bin/bash

echo "Desfazendo as alterações..."

# Remover os arquivos da aplicação
rm -rf /var/www/html/*

# Remover o diretório temporário
rm -rf /tmp/linux-site-dio

# Remover o arquivo zip baixado
rm /tmp/main.zip

# Desinstalar o apache2 e unzip
apt-get purge apache2 -y
apt-get purge unzip -y

# Reverter as alterações feitas pelo upgrade
apt-get downgrade -y

# Reverter as alterações feitas pelo update
apt-get update --fix-missing
