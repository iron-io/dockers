FROM iron/base

RUN echo 'http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories
RUN apk update && apk upgrade

RUN apk add openjdk8

# Clean APK cache
RUN rm -rf /var/cache/apk/*
