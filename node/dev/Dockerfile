FROM iron/base:edge

RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories
RUN echo '@community http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories

RUN apk update && apk upgrade
RUN apk add curl nodejs-dev@community nodejs@community
RUN npm install -g npm
RUN rm -rf /var/cache/apk/*
