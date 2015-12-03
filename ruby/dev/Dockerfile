FROM iron/ruby

RUN apk update && apk upgrade

RUN apk add curl git make
RUN apk add openssl-dev libssl1.0 build-base libxml2-dev libxslt-dev libbz2 libevent-dev libffi-dev glib-dev ncurses-dev readline-dev yaml-dev zlib-dev
RUN apk add libpq sqlite-dev mariadb-libs postgresql-dev
RUN apk add ruby-dev ruby ruby-io-console ruby-bundler

# Clean APK cache
RUN rm -rf /var/cache/apk/*
