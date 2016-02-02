
This image is a base image for Iron.io's set of tiny images. Currently, it's just the alpine OS image.

## Building this image

First, be sure to get the latest alpine:

```sh
docker pull alpine
docker pull alpine:edge
```

Then build it:

```sh
docker build -t iron/base:latest --no-cache .
```

Tag it with Alpine version, run `docker run --rm iron/base cat /etc/os-release` to check version.

```sh
docker tag iron/base:latest iron/base:X.Y.Z
```

Push:

```sh
docker push iron/base
```
