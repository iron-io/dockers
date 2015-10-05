FROM iron/base

RUN apk update; apk upgrade; \
    apk add wget curl git php php-curl php-json php-openssl php-json php-phar php-dom; \
    rm -rf /var/cache/apk/*; \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
