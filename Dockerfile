FROM ubuntu:latest
RUN apt-get update && apt-get install -y --fix-missing \
  nginx \
  software-properties-common \
  python-software-properties \
  php-fpm \
  php-xsl \
  php-curl \
  php-gd \
  php-mcrypt \
  php-mysqlnd \
  apt-utils \
  curl \
  wkhtmltopdf

COPY init.sh /root/init.sh
RUN chmod +x /root/init.sh
COPY wkhtmltopdf /usr/local/bin/wkhtmltopdf
CMD ["/root/init.sh"]
