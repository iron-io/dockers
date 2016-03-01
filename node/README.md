[![](https://badge.imagelayers.io/iron/node:latest.svg)](https://imagelayers.io/?images=iron/node:latest 'Get your own badge on imagelayers.io')

Docker Hub: https://hub.docker.com/r/iron/node/

## Using

```sh
docker run -it --rm iron/node node -v
```

## Building this image

**NOTE: Temporarily using [mhart/alpine-node](https://github.com/mhart/alpine-node) for v5 images until Alpine package updated.**

```sh
ruby build.rb
```

Push:

```sh
docker push iron/node
```
