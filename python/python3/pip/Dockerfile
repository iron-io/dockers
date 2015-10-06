FROM iron/python:3

RUN apk update && apk upgrade

RUN apk add curl
RUN apk add python3

RUN curl -sS https://bootstrap.pypa.io/get-pip.py | python3

# Clean APK cache
RUN rm -rf /var/cache/apk/*
