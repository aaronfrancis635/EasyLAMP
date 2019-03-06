#!/bin/bash
apt install apache2 -y
apt install mysql-server -y
mysql_secure_installation
apt install php -y
sed -i '1s/^/<IfModule mod_dir.c>\nDirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm\n</IfModule>\n/' /etc/apache2/mods-enabled/dir.conf
systemctl restart apache2
