ARG PHP_VERSION=${PHP_VERSION}

FROM php:${PHP_VERSION}-fpm

RUN apt-get update && \
    apt-get -y install git wget zip libzip-dev zlib1g-dev curl gnupg2 software-properties-common libpng-dev && \
    docker-php-ext-install zip mysqli pdo_mysql gd bcmath && \
    curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer && composer global require hirak/prestissimo --no-plugins --no-scripts

CMD ["php-fpm"]

EXPOSE 9000