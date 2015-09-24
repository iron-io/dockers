FROM iron/base

RUN apk update && apk upgrade

RUN apk add libxml2 libxslt ruby ruby-io-console

# Clean APK cache
RUN rm -rf /var/cache/apk/*
