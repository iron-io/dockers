FROM iron/base

RUN echo 'http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories
RUN apk update && apk upgrade

# openjdk-8-base contains no GUI support. see https://pkgs.alpinelinux.org/package/testing/x86_64/openjdk8-jre-base
RUN apk add openjdk8-jre-base

# Clean APK cache
RUN rm -rf /var/cache/apk/*
