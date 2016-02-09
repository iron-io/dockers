FROM iron/base

RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories \
  && echo '@community http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories \
  && echo '@testing http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories \
  && apk update \
  && apk upgrade \
  && apk add mono-dev@testing \
  && cert-sync /etc/ssl/certs/ca-certificates.crt \
  && rm -rf /var/cache/apk/*
