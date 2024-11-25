#!/bin/bash

sudo mkdir /var/www/html/prestashop

# Variables de configuración
PRESTASHOP_VERSION="8.2"  # Cambia a la última versión estable
PRESTASHOP_DIR="/var/www/html/prestashop"

# Cambiar a /var/www/html
cd $PRESTASHOP_DIR

# Descargar PrestaShop

sudo wget https://github.com/PrestaShop/PrestaShop/releases/download/$PRESTASHOP_VERSION/prestashop_$PRESTASHOP_VERSION.zip

# Descomprimir el archivo ZIP
sudo unzip prestashop_$PRESTASHOP_VERSION.zip

# Eliminar el archivo ZIP
sudo rm prestashop_$PRESTASHOP_VERSION.zip

# Establecer los permisos adecuados
sudo chown -R www-data:www-data $PRESTASHOP_DIR
sudo chmod -R 755 $PRESTASHOP_DIR

# Configurar Apache para PrestaShop
echo "<VirtualHost *:80>
    DocumentRoot $PRESTASHOP_DIR
    <Directory $PRESTASHOP_DIR>
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>" | sudo tee /etc/apache2/sites-available/prestashop.conf

# Habilitar el nuevo sitio de Apache y reiniciar Apache
sudo a2ensite prestashop.conf
sudo systemctl restart apache2

echo "PrestaShop se ha instalado correctamente. Puedes completar la instalación a través del navegador."
