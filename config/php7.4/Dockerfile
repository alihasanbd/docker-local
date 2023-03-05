FROM php:7.4.23-apache-buster


#Surpresses debconf complaints of trying to install apt packages interactively
#https://github.com/moby/moby/issues/4032#issuecomment-192327844

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update --fix-missing --no-install-recommends
RUN apt-get -y upgrade

# Install useful tools
RUN apt-get -yq install apt-utils git nano wget curl dialog zip openssl ffmpeg build-essential
# Install important libraries
RUN apt-get -y install --fix-missing libmcrypt-dev
RUN apt-get -y install --fix-missing mariadb-client
RUN apt-get -y install --fix-missing zlib1g-dev
RUN apt-get -y install --fix-missing libbz2-dev
RUN apt-get -y install --fix-missing libicu-dev
RUN apt-get -y install --fix-missing libzip-dev
RUN apt-get -y install --fix-missing libcurl4 libcurl4-openssl-dev
RUN apt-get -y install --fix-missing libonig-dev

# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# PHP Extensions
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install mysqli

RUN docker-php-ext-install curl
RUN docker-php-ext-install tokenizer
RUN docker-php-ext-install json

RUN docker-php-ext-install zip 
RUN docker-php-ext-install bz2

RUN docker-php-ext-install mbstring
RUN docker-php-ext-install gettext
RUN docker-php-ext-install exif
RUN docker-php-ext-install sockets
RUN docker-php-ext-install -j$(nproc) intl

RUN pecl install xdebug-2.8.0
RUN pecl install mcrypt-1.0.3

RUN docker-php-ext-enable xdebug
RUN docker-php-ext-enable mcrypt


# Enable apache modules
RUN a2enmod rewrite headers