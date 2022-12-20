#!/bin/bash
set -e
echo "*******    Installing Nginx    *******"
apt update
apt install -y nginx
ufw allow "Nginx HTTP"
systemctl enable nginx

echo "*******    Installation Completed!    *******"
echo "Welcome to GCP Instance, Yuriy Kapustyan" > /var/www/html/index.html
systemctl restart nginx
echo "*******    Startup script completed!    *******"
