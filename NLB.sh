#!/bin/bash
sudo apt update
sudo apt install niginx -y
sudo systemctl restart nginx
sudo systemctl enable nginx
echo "<h1>$(cat /etc/hostanme)</h1>" >> /var/www/html/index.nginx-debian.html
echo'<h1>US-EAST-1A-SERVERS</h1>" /var/www/html/index.nginx-debian.html