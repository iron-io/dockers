FROM iron/base

RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories \
  && echo '@community http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories \
  && apk update && apk upgrade \
  && apk add erlang@edge \
     erlang-debugger@edge \
     erlang-dev@edge \
     erlang-dialyzer@edge \
     erlang-et@edge \
     erlang-megaco@edge \
     erlang-observer@edge \
     erlang-odbc@edge \
     erlang-reltool@edge \
     erlang-wx@edge \
  && rm -rf /var/cache/apk/*