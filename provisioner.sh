#!/bin/sh
set -e -x
export DEBIAN_FRONTEND=noninteractive

apt-get install -y nginx php php-fpm git

/etc/init.d/nginx start
/etc/init.d/php7.0-fpm start
