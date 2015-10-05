FROM iron/base

RUN apk update; apk upgrade; \
    apk add wget curl git make openssl-dev build-base libxml2-dev libxslt-dev ruby-dev ruby ruby-io-console ruby-bundler; \
    rm -rf /var/cache/apk/*
