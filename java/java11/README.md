# Java 1.11 JRE Image

This is a small, [Alpine Linux](http://www.alpinelinux.org/) based Docker image
that contains the Java 1.11 JVM. It's useful for executing Java bytecode, but note
that it doesn't contain the JDK, so you can't use it to compile Java code.
Use iron/java-dev to compile code.

## Using

```sh
docker run -it --rm iron/java:1.11 java -version
```
