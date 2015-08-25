FROM iron/base

RUN apk update && apk upgrade

RUN apk add ruby ruby-io-console ruby-bundler

# Clean APK cache
RUN rm -rf /var/cache/apk/*
