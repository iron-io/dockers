FROM iron/base

RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories
RUN echo '@community http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories
RUN apk update && apk upgrade

# openjdk7-jre-base contains no GUI support. see https://pkgs.alpinelinux.org/package/main/x86_64/openjdk7-jre-base
RUN apk add openjdk7-jre-base

# Clean APK cache
RUN rm -rf /var/cache/apk/*
