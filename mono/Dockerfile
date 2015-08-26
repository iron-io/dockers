FROM iron/base

RUN apk update && apk upgrade

RUN apk add mono --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

# Clean APK cache
RUN rm -rf /var/cache/apk/*
