FROM iron/php

RUN apk update && apk upgrade

RUN apk add php php-phar php-json php-openssl php-curl

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

# Clean APK cache
RUN rm -rf /var/cache/apk/*
