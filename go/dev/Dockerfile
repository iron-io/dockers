FROM iron/base:edge

RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories
RUN echo '@community http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories

RUN apk update && apk upgrade
RUN apk add wget curl make git bzr mercurial bash go@community alpine-sdk
RUN which go
ENV GOROOT_BOOTSTRAP /usr/lib/go
RUN git clone https://go.googlesource.com/go
RUN cd go && git checkout go1.8 && cd src && ./make.bash
ENV PATH="${PWD}/go/bin:${PATH}"
RUN rm -rf /var/cache/apk/*

RUN mkdir /gocode
ENV GOPATH /gocode

