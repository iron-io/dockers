[![](https://badge.imagelayers.io/iron/node:latest.svg)](https://imagelayers.io/?images=iron/node:latest 'Get your own badge on imagelayers.io')

Docker Hub: https://hub.docker.com/r/iron/node/

## Using

```sh
docker run -it --rm iron/node node -v
```

## Building this image

**NOTE: Temporarily using [mhart/alpine-node](https://github.com/mhart/alpine-node) for v5 images until Alpine package updated.**

mhart version:

```sh
docker build -t iron/node:latest -f Dockerfile.mhart .
```

Normal version:

```sh
docker build -t iron/node:latest .
```

Tag the version, check it with `docker run --rm iron/node node -v`:

```sh
docker tag -f iron/node:latest iron/node:5
docker tag -f iron/node:latest iron/node:5.Y
docker tag -f iron/node:latest iron/node:5.Y.Z
```

Push:

```sh
docker push iron/node
```
