
## Using

```sh
docker run -it --rm iron/mono mono -v
```

## Building this image

```sh
docker build -t iron/mono:latest .
```

Tag the version, check it with `docker run --rm iron/mono mono -v`:

```sh
docker tag iron/mono:latest iron/mono:X.Y.Z
```

Push:

```sh
docker push iron/mono
```
