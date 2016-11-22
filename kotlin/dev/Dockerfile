FROM iron/java:1.8

ENV KOTLIN_COMPILER_URL=https://github.com/JetBrains/kotlin/releases/download/v1.0.5/kotlin-compiler-1.0.5.zip

RUN apk --no-cache add bash

RUN mkdir /opt

RUN wget $KOTLIN_COMPILER_URL -O /tmp/a.zip && \
    unzip /tmp/a.zip -d /opt && \
    rm /tmp/a.zip

ENV PATH $PATH:/opt/kotlinc/bin