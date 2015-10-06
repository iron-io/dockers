FROM iron/python:2

RUN apk update && apk upgrade

RUN apk add curl
RUN apk add python

RUN curl -sS https://bootstrap.pypa.io/get-pip.py | python

# Clean APK cache
RUN rm -rf /var/cache/apk/*
