FROM php:7.4-fpm
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y libicu-dev \
    && apt-get install -y nano \
    && pecl install redis \
    && docker-php-ext-enable redis \
    && docker-php-ext-install intl \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug \
