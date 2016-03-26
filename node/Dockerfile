## START - THIS IS WHAT IT SHOULD BE AFTER ALPINE OFFICIAL NODE 5.X RELEASE
# FROM iron/base

# RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories
# RUN echo '@community http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories

# RUN apk update && apk upgrade \
#   && apk add nodejs@community \
#   && npm uninstall -g npm \
#   && rm -rf /var/cache/apk/*
## END

## START TEMP 

FROM iron/node:5-dev-test

RUN npm uninstall -g npm
