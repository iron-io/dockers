
Docker Hub: https://hub.docker.com/r/iron/node/

## Using

```sh
docker run -it --rm iron/node:4.1 node -v
```

## Building this image

```sh
docker build -t iron/node:latest .
```

Tag the version, check it with `docker run --rm iron/node node -v`:

```sh
docker tag iron/node:latest iron/node:X.Y.Z
```

Push:

```sh
docker push iron/node
```
