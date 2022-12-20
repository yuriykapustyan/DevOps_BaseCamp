#!/bin/bash
set -e
echo "*******    Installing Apache    *******"
apt update
apt install -y apache2
ufw allow http
systemctl enable apache2

echo "*******    Installation Completed!    *******"

echo "Welcome to GCP Instance, Yuriy Kapustyan" > /var/www/html/index.html
systemctl restart apache2

echo "*******    Startup script completed!    *******"
