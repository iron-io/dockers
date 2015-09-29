FROM iron/base

RUN apk update; apk upgrade; \
    sed -i -e 's/v3\.2/edge/g' /etc/apk/repositories; apk update; \
    apk add curl nodejs nodejs-dev; \
    rm -rf /var/cache/apk/*
