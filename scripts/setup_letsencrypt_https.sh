#!/bin/bash

# Instalar Certbot y módulo de Apache para Let's Encrypt
sudo apt update

#Realizamos la instalación y actualización de snapd.
sudo apt install snapd –y
sudo snap install core
sudo snap refresh core


sudo snap install --classic certbot

sudo ln -fs /snap/bin/certbot /usr/bin/certbot

sudo certbot –apache

# Solicitar certificado SSL
DOMAIN="prueba7iaw.duckdns.org"
sudo certbot --apache -d $DOMAIN -d www.$DOMAIN

# Configurar renovación automática del certificado
sudo systemctl enable certbot.timer
echo "Configuración HTTPS con Let's Encrypt completada con éxito para $DOMAIN."
