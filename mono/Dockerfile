FROM iron/base

RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories
RUN echo '@community http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories
RUN echo '@testing http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories
RUN apk update && apk upgrade

RUN apk add mono@testing

# Move ca certificates into Mono's certificate store (http://www.mono-project.com/docs/faq/security/)
RUN cert-sync /etc/ssl/certs/ca-certificates.crt

# Clean APK cache
RUN rm -rf /var/cache/apk/*
