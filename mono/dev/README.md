
## Using

```sh
docker run -it --rm iron/mono:dev mono --version
```

## Building this image

```sh
docker build -t iron/mono:dev .
```

Tag the version, check it with `docker run --rm iron/mono:dev mono --version`:

```sh
docker tag iron/mono:dev iron/mono:4-dev
docker tag iron/mono:dev iron/mono:4.Y-dev
docker tag iron/mono:dev iron/mono:4.Y.Z-dev
```

Push:

```sh
docker push iron/mono
```
