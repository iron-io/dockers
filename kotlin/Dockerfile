FROM iron/java

ENV VERSION 1.0.5

ENV KOTLIN_HOME=/usr/share/kotlin
ENV KOTLIN_COMPILER_URL https://github.com/JetBrains/kotlin/releases/download/v${VERSION}/kotlin-compiler-${VERSION}.zip

RUN apk update
RUN apk add bash

RUN mkdir /opt

RUN wget $KOTLIN_COMPILER_URL -O /tmp/a.zip && \
    unzip /tmp/a.zip -d /opt && \
    rm /tmp/a.zip

ENV PATH $PATH:/opt/kotlinc/bin