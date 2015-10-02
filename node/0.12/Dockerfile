FROM iron/base

RUN apk update && apk upgrade

RUN apk add nodejs

# Clean APK cache
RUN rm -rf /var/cache/apk/*
