
## Using

```sh
docker run -it --rm iron/java java -version
```

## Building this image

```sh
docker build -t iron/java:latest .
```

Tag the version, check it with `docker run --rm iron/java java -version`:

```sh
docker tag iron/java:latest iron/java:X.Y.Z
```

Push:

```sh
docker push iron/java
```

## TODO

* [ ] we could maybe make a few different versions of this, one for building and a smaller one for running (openjdk7-jre).
