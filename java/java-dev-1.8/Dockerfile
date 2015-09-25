FROM iron/base

RUN echo 'http://nl.alpinelinux.org/alpine/v2.6/main' >> /etc/apk/repositories && echo 'http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories
RUN apk update && apk upgrade

RUN apk add openjdk8
# puts javac in the PATH
ENV PATH=/usr/lib/jvm/java-1.8-openjdk/bin:$PATH

# Clean APK cache
RUN rm -rf /var/cache/apk/*
