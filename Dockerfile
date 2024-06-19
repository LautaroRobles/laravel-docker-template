FROM php:8.2-fpm

# Instalamos composer
COPY --from=composer:2.7 /usr/bin/composer /usr/local/bin/composer

# Instalmos node
COPY --from=node:18.16.0-slim /usr/local/bin /usr/local/bin
COPY --from=node:18.16.0-slim /usr/local/lib/node_modules/npm /usr/local/lib/node_modules/npm

# Instalamos git
RUN apt-get update
RUN apt-get install -y git

# Extensiones de php
ADD --chmod=0755 https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN install-php-extensions zip

WORKDIR /src