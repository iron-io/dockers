FROM iron/php

# php7-dev has a TON of packages, probably best for people to just add what they need. 
# RUN apk update && apk upgrade \
#  && apk add php7-dev@testing \
#  && rm -rf /var/cache/apk/*

RUN apk add --no-cache build-base curl \
  && curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
