#!/bin/bash
yum update -y
amazon-linux-extras install nginx1.12 -y
service nginx start
systemctl enable nginx
echo "<h1>$(cat /etc/hostname)</h1>" >>
/usr/share/nginx/html/index.html