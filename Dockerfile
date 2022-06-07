#FROM php:7.2-apache
FROM php:8.0-apache
MAINTAINER lab.infoworks.com

#Now deploy project src to /var/www/html
ADD . /var/www
ADD ./public /var/www/html
#ADD config/apache.conf /etc/apache2/httpd.conf
#COPY config/php.ini /usr/local/etc/php/
#
EXPOSE 80
RUN apt-get update \
    #&& apt-get install -y libmcrypt-dev \
    #&& pecl install mcrypt-1.0.2 \
    #&& docker-php-ext-enable mcrypt \
    #&& docker-php-ext-install mysqli \
    && docker-php-ext-install pdo_mysql \
    && a2enmod headers \
    && a2enmod rewrite \
    && service apache2 restart