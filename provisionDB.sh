#!/bin/bash
sudo apt-get update
sudo apt-get install mysql-server -y
sudo mysql < "/vagrant/shareVmDB/dbProvision.sql"
sudo sed -i 's/127.0.0.1/10.10.20.11/' /etc/mysql/mysql.conf.d/mysqld.cnf
sudo systemctl restart mysql.service
