FROM iron/base

RUN apk update && apk upgrade

RUN apk add php php-json

# Clean APK cache
RUN rm -rf /var/cache/apk/*
