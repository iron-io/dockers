FROM iron/base

RUN apk update && apk upgrade \
  && apk add php php-phar php-json php-curl \
  && rm -rf /var/cache/apk/*
