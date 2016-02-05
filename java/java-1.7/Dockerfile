FROM iron/base

# openjdk7-jre-base contains no GUI support. see https://pkgs.alpinelinux.org/package/main/x86_64/openjdk7-jre-base
RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories \
  && echo '@community http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories \
  && apk update \
  && apk upgrade \
  && apk add openjdk7-jre-base \
  && rm -rf /var/cache/apk/*
