
## Building this image

```sh
docker build -t iron/scala:latest .
```

Tag the version, check it with `docker run --rm iron/scala scala -version`:

```sh
docker tag -f iron/scala:latest iron/scala:X
docker tag -f iron/scala:latest iron/scala:X.Y
docker tag -f iron/scala:latest iron/scala:X.Y.Z
```

Push:

```sh
docker push iron/scala
```
