FROM iron/base

RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories \
  && echo '@community http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories \
  && apk update \
  && apk upgrade \
  && apk add openjdk8@community \
  && rm -rf /var/cache/apk/*

# puts javac in the PATH
ENV PATH=/usr/lib/jvm/java-1.8-openjdk/bin:$PATH
