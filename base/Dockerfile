FROM alpine

RUN apk update && apk upgrade
# NOTE: the ca-certificates pkg seems to have too many dependencies like lua: http://pkgs.alpinelinux.org/package/main/x86_64/ca-certificates
# So just copying the certs directly in to reduce size
# RUN apk add ca-certificates

#RUN apk add musl

RUN rm -rf /var/cache/apk/*
ADD https://raw.githubusercontent.com/CenturyLinkLabs/ca-certs-base-image/master/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
