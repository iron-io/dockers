FROM iron/base

RUN apk update && apk upgrade
# Image size is 131 MB with `apk add go`, can we do better? Maybe doesn't matter since it's only to build
RUN apk add go git bzr
# Clean APK cache
RUN rm -rf /var/cache/apk/*

ENV GOPATH /go
ENV GO15VENDOREXPERIMENT 1
