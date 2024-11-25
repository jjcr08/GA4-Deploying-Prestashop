#!/bin/bash

# Actualizar la lista de paquetes
sudo apt update -y

# Instalar Apache
sudo apt install apache2 -y

# Instalar MySQL
sudo apt install mysql-server -y

# Instalar PHP y las extensiones necesarias para PrestaShop
sudo apt install php libapache2-mod-php php-mysql php-xml php-gd php-mbstring php-curl php-zip -y

# Reiniciar Apache para aplicar los cambios
sudo systemctl restart apache2

# Instalar phpMyAdmin
sudo apt install phpmyadmin -y

# Configurar Apache para que funcione phpMyAdmin
sudo ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin

# Reiniciar Apache para que phpMyAdmin esté accesible
sudo systemctl restart apache2

echo "La pila LAMP y phpMyAdmin se han instalado correctamente."
