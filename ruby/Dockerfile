FROM alpine

RUN apk update && apk upgrade

RUN apk add curl git ruby ruby-io-console ruby-bundler

# Clean APK cache
RUN rm -rf /var/cache/apk/*
