#!/usr/bin/env bash
DB_NAME=vagrant_test
DB_PASSWD=test_password

apt-get update
apt-get upgrade

apt-get install -y software-properties-common -y

apt-get install debconf-utils -y

debconf-set-selections <<< "mysql-server mysql-server/root_password password $DB_PASSWD"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $DB_PASSWD"

apt-get -y install mysql-server

service mysql restart

mysql -uroot -p$DB_PASSWD -e "CREATE DATABASE $DB_NAME"
mysql -uroot -p$DB_PASSWD $DB_NAME < /var/www/seeds/users.sql

add-apt-repository ppa:nginx/stable  -y

apt-get update

apt-get install nginx -y

sudo systemctl start nginx

cat /var/www/config/nginx/default > /etc/nginx/sites-available/default

sudo systemctl restart nginx

add-apt-repository ppa:ondrej/php -y

apt-get update

apt-get install php7.3-cli php7.3-fpm php7.3-curl php7.3-gd php7.3-mysql php7.3-mbstring zip unzip  -y

systemctl start php7.3-fpm.service

