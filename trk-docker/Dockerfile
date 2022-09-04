FROM node:latest AS node
FROM php:7.2.5-fpm



RUN apt-get update && apt-get install -y \
    git \
    curl \
    zip \
    vim \
    unzip

RUN docker-php-ext-install mysqli pdo pdo_mysql exif

RUN apt-get install -y \
    imagemagick libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-enable imagick

RUN apt-get update && \
apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev && \
docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/ && \
docker-php-ext-install gd

WORKDIR /var/www

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
