FROM php:7.3.14-apache
RUN docker-php-source extract && docker-php-ext-install pdo_mysql && docker-php-ext-enable pdo_mysql && docker-php-source delete
RUN apt-get update && apt-get -y install wget
RUN wget http://download.limesurvey.org/lts-releases/limesurvey3.22.7+200225.tar.gz && \
tar -zxvf limesurvey3.22.7+200225.tar.gz && rm limesurvey3.22.7+200225.tar.gz
RUN chmod -R 777 /var/www/html/limesurvey/tmp/ /var/www/html/limesurvey/upload/ /var/www/html/limesurvey/application/config/
