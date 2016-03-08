FROM iron/php

# RUN apk update && apk upgrade \
#   && apk add php php-phar php-json php-openssl php-curl \
#   && rm -rf /var/cache/apk/*

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
