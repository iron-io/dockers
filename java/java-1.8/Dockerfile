FROM iron/base

RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories && \
    echo '@community http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories

# openjdk-8-base contains no GUI support. see https://pkgs.alpinelinux.org/package/testing/x86_64/openjdk8-jre-base
RUN apk update && \
    apk upgrade && \
    apk add openjdk8-jre-base@community && \
    rm -rf /var/cache/apk/*
