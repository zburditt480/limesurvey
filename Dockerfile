FROM php:7.3.14-apache
RUN docker-php-source extract && docker-php-ext-install pdo_mysql && docker-php-ext-enable pdo_mysql
COPY ./limesurvey /var/www/html/limesurvey
