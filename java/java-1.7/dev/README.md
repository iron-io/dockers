# Java 1.7 JDK Image

This is a small, [Alpine Linux](http://www.alpinelinux.org/) based Docker image
that contains the Java 1.7 JDK. You can use it to compile and execute your Java code.

If you're executing Java code in production, however, we recommend you use iron/java:1.7.

## Using

```sh
docker run -it --rm iron/java:1.7-dev javac -version
```
