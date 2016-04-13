FROM iron/erlang

# Env
ENV REBAR_VERSION 2.6.1

RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories \
    && echo '@community http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories \
    && apk update \
    && apk upgrade \
    && apk add git make wget ca-certificates

# Install rebar
RUN wget -cqO- https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz | tar -C /tmp -xzf -
RUN cd /tmp \
    && cd rebar-${REBAR_VERSION} \
    && make \
    && cp rebar /usr/bin/rebar \
    && cd / && rm -rf /tmp/rebar-${REBAR_VERSION}

RUN apk del wget ca-certificates \
    && rm -rf /var/cache/apk/*