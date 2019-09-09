#!/bin/sh
set -e -x
export DEBIAN_FRONTEND=noninteractive

apt-get update -y && apt-get install -y nginx php php-fpm

mv /tmp/default /etc/nginx/sites-available/default
cd /var/www && rm -rf demo && git clone https://github.com/marceloweb/demo.git
chown -R www-data:www-data /var/www/demo

/etc/init.d/php7.0-fpm start
/etc/init.d/nginx reload
