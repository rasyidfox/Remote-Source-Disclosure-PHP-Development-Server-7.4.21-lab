FROM php:7.4.21-cli-alpine

WORKDIR /rfd_php7.4.21

COPY . /rfd_php7.4.21

RUN apk add --no-cache \
    bash \
    libzip-dev \
    && docker-php-ext-install zip

CMD ["php", "-S", "0.0.0.0:8888"]
