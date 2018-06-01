FROM iron/base

RUN echo '@testing http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories \
  && apk update && apk upgrade \
  && apk add php7@testing php7-openssl@testing php7-phar@testing php7-json@testing php7-curl@testing \
  && rm -rf /var/cache/apk/* \
  && ln -s /usr/bin/php7 /usr/bin/php
