FROM iron/base

RUN apk update && apk upgrade
# Image size is 131 MB with `apk add go`, can we do better? Maybe doesn't matter since it's only to build, can use iron/base to run.
RUN apk add go git bzr mercurial
# Clean APK cache
RUN rm -rf /var/cache/apk/*

ENV GOPATH /go
ENV GO15VENDOREXPERIMENT 1
