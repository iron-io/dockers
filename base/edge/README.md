
This image is a base image for Iron.io's set of tiny images. Currently, it's just the alpine OS image.

## Building this image

First, be sure to get the latest alpine:

```sh
docker pull alpine:edge
```

Then build it:

```sh
docker build -t iron/base:edge .
```

Push:

```sh
docker push iron/base
```
