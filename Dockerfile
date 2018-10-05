FROM php:7.2.10-fpm

RUN docker-php-ext-configure opcache --enable-opcache && \
	docker-php-ext-install opcache

COPY config/opcache.ini $PHP_INI_DIR/conf.d/
