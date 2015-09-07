
## Using

```sh
docker run -it --rm iron/java1.8 java -version
```

## Building this image

```sh
docker build -t iron/java1.8:latest .
```

Tag the version, check it with `docker run --rm iron/java1.8 java -version`:

```sh
docker tag iron/java1.8:latest iron/java1.8:X.Y.Z
```

Push:

```sh
docker push iron/java1.8
```
