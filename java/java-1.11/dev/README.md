# Java 1.11 JDK Image

This is a small, [Alpine Linux](http://www.alpinelinux.org/) based Docker image
that contains the Java 1.11 JDK. You can use it to compile and execute your Java code.

If you're executing Java code in production, however, we recommend you use iron/java:1.11.

## Using

```sh
docker run -it --rm iron/java:1.11-dev javac -version
```
