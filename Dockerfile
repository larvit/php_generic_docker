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

# Download wkhtmltopdf manually since Debian is SLOW on getting the new version in their repos
#RUN cd /root && \
#  curl -L -o /root/wkhtmltox.deb https://bitbucket.org/wkhtmltopdf/wkhtmltopdf/downloads/wkhtmltox-0.13.0-alpha-7b36694_linux-jessie-amd64.deb && \
#  dpkg -i /root/wkhtmltox.deb; exit 0
#RUN apt-get -f -y install
#RUN rm /root/wkhtmltox.deb

COPY init.sh /root/init.sh
RUN chmod +x /root/init.sh
COPY wkhtmltopdf /usr/local/bin/wkhtmltopdf
CMD ["/root/init.sh"]
