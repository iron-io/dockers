
Docker Hub: https://hub.docker.com/r/iron/node/

## Using

```sh
docker run -it --rm iron/node node -v
```

## Building this image

```sh
docker build -t iron/node:0.12 .
```

Tag the full version, check it with `docker run --rm iron/node node -v`:

```sh
docker tag iron/node:0.12 iron/node:X.Y.Z
```

Push:

```sh
docker push iron/node
```
