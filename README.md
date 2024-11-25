# GA4 - Deploying Prestashop

## Descripción
Este repositorio contiene los scripts necesarios para desplegar PrestaShop en una instancia EC2 de AWS con Ubuntu Server.

## Contenido
- **conf/000-default.conf:** Archivo de configuración para Apache.
- **scripts/.env:** Variables de entorno utilizadas en los scripts.
- **scripts/install_lamp.sh:** Script para instalar la pila LAMP.
- **scripts/setup_letsencrypt_https.sh:** Script para configurar SSL/TLS con Certbot.
- **scripts/deploy_prestashop.sh:** Script para desplegar PrestaShop.

## Pasos para usar los scripts
1. Configura las variables en `.env`.
2. Ejecuta `install_lamp.sh` para instalar LAMP.
3. Ejecuta `setup_letsencrypt_https.sh` para configurar HTTPS.
4. Ejecuta `deploy_prestashop.sh` para desplegar PrestaShop.

## Autor
- Curso: Implantación de Aplicaciones Web
- Año: 2024/2025
