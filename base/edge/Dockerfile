FROM alpine:edge

RUN apk update && apk upgrade
# TODO: ca-certificates fails to install on alpine:edge
#RUN apk add ca-certificates
RUN rm -rf /var/cache/apk/*
