FROM php:7.4-apache

LABEL maintainer="Leo Storozhev"

# Fix debconf warnings upon build
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get upgrade -y \
    && apt-get update -y \
    && apt-get install -y libzip-dev zip \
    && docker-php-ext-install zip

RUN a2enmod rewrite headers expires ssl \
    && apt-get install -y --no-install-recommends apt-utils \
    && apt-get install git -y \
    && apt-get install libldb-dev -y \
    && apt-get install libldap2-dev -y  \
    && apt-get install libjpeg-dev -y \
    && apt-get install libpng-dev -y \
    && apt-get install libgif-dev -y \
    && apt-get install libxml2-dev -y \
    && apt-get install libmcrypt-dev libreadline-dev -y \
    && apt-get install libcurl4-openssl-dev -y \
    && docker-php-ext-install ldap gd pdo_mysql mysqli soap xmlrpc curl

RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer  

EXPOSE 80

#COPY . /srv/app
#COPY ./.docker/local/apache-php/conf/extra/httpd-vhosts.conf /etc/apache2/sites-available/000-default.conf
#COPY ./.docker/ssl/personal.pem /etc/apache2/conf/ssl.crt/server.pem
#COPY ./.docker/ssl/file.key /etc/apache2/conf/ssl.key/server.key
#COPY ./.docker/ssl/ca.crt /etc/apache2/conf/ssl.crt/ca.crt

RUN apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

