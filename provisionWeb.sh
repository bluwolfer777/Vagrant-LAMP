#!/bin/bash
sudo apt-get update
sudo apt-get install apache2 php libapache2-mod-php php-mysql -y
rm -i /var/www/html/*