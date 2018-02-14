FROM iron/ruby

RUN apk add --no-cache curl git make \
    libssl1.0 build-base libxml2-dev libxslt-dev libbz2 libevent-dev libffi-dev glib-dev ncurses-dev readline-dev yaml-dev zlib-dev \
    libpq sqlite-dev mariadb-libs postgresql-dev \
    ruby-dev ruby ruby-io-console ruby-bundler

# Now upate bundler: https://github.com/iron-io/dockers/issues/50
RUN gem install --no-rdoc --no-ri bundler
