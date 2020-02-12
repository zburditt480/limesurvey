FROM php:7.3.14-apache
RUN docker-php-source extract && docker-php-ext-install pdo_mysql && docker-php-ext-enable pdo_mysql && docker-php-source delete
COPY ./limesurvey /var/www/html/limesurvey
RUN chmod -R 777 /var/www/html/limesurvey/tmp/ /var/www/html/limesurvey/upload/ /var/www/html/limesurvey/application/config/
