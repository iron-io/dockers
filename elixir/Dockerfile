FROM iron/base

RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories
RUN echo '@community http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories
RUN apk update && apk upgrade

RUN apk add erlang-crypto@edge
RUN apk add elixir@edge

# this line and maybe crypto package above may only be required when building
RUN mix local.hex --force

# Clean APK cache
RUN rm -rf /var/cache/apk/*
