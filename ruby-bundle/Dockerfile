FROM alpine

RUN apk update && apk upgrade

RUN apk add curl git make
RUN apk add openssl-dev build-base
RUN apk add ruby-dev ruby ruby-io-console ruby-bundler

# Clean APK cache
RUN rm -rf /var/cache/apk/*
