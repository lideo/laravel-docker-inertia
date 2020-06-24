FROM php:7.3-fpm
WORKDIR /var/www

RUN apt-get update && apt-get install -y \
    zlib1g-dev \
    libzip-dev \
    zip \
    unzip

#php
RUN docker-php-ext-install pdo pdo_mysql zip

# composer
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

# laravel
RUN composer global require laravel/installer

# nvm, node, npm
ENV NODE_VERSION=12.8.1
RUN apt-get install -y curl
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
ENV NVM_DIR=/root/.nvm
RUN . "$NVM_DIR/nvm.sh" && nvm install ${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm use v${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm alias default v${NODE_VERSION}
ENV PATH="/root/.nvm/versions/node/v${NODE_VERSION}/bin/:${PATH}"
RUN node --version
RUN npm --version