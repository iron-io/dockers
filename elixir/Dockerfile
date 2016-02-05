FROM iron/base

RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories \
  && echo '@community http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories \
  && apk update && apk upgrade \
  && apk add erlang-crypto@edge \
  && apk add elixir@edge \
  && mix local.hex --force \
  && rm -rf /var/cache/apk/*
