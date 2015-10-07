FROM iron/java:1.8

RUN apk update && apk upgrade
RUN apk add bash

ADD scala-2.11.7 /usr/local/share/scala
ENV SCALA-HOME=/usr/local/share/scala
ENV PATH=/usr/local/share/scala/bin:$PATH

# Clean APK cache
RUN rm -rf /var/cache/apk/*
