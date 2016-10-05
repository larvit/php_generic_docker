#!/bin/sh

# Start nginx
service nginx start

# Start PHP-FPM
service php7.0-fpm start

tail -f /var/log/nginx/access.log
