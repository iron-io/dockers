FROM iron/base

RUN apk update && apk upgrade

RUN apk add libxml2 libxslt libevent libffi glib ncurses readline openssl yaml zlib curl
RUN apk add mariadb-libs libpq
RUN apk add ruby ruby-io-console

# Clean APK cache
RUN rm -rf /var/cache/apk/*
