FROM alpine

RUN apk update && apk upgrade

RUN apk add curl git mercurial make
RUN apk add openssl-dev build-base
RUN apk add go

# Clean APK cache
RUN rm -rf /var/cache/apk/*

ENV GOPATH /go
