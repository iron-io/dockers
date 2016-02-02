FROM iron/base

RUN apk update && apk upgrade \
    && apk add libxml2 libxslt libevent libffi glib ncurses readline \
    openssl yaml zlib curl  mariadb-libs libpq ruby ruby-io-console \
    && rm -rf /var/cache/apk/*
