FROM iron/base:edge

RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories

RUN apk update && apk upgrade \
  && apk add ghc@edge curl \
  && curl -sSL https://get.haskellstack.org/ | sh \  
  && rm -rf /var/cache/apk/* 
