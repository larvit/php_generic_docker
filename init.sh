#!/bin/sh

# Start nginx
service nginx start

# Start PHP-FPM
service php-fpm start

tail -f /var/log/nginx/access.log
