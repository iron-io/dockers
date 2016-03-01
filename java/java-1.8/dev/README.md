# Java 1.8 JDK Image

This is a small, [Alpine Linux](http://www.alpinelinux.org/) based Docker image
that contains the Java 1.8 JDK. You can use it to compile and execute your Java code.

If you're executing Java code in production, however, we recommend you use iron/java:1.8.

## Using

```sh
docker run -it --rm iron/java:1.8-dev javac -version
```

## Building this image

```sh
docker build -t iron/java:dev .
```

Check full version: `docker run --rm iron/java:1.8-dev java -version`, and tag it:

```sh
docker tag iron/java:dev iron/java:1.8-dev
docker tag iron/java:dev iron/java:1.8.X-dev
```

Push:

```sh
docker push iron/java
```
