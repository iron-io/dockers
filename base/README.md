
This image is a base image for Iron.io's set of tiny images. Currently, it's just the alpine OS image.

## Building this image

```sh
docker build -t iron/base:latest .
```

Tag it with Alpine version, run `docker run --rm iron/base cat /etc/*-release` to check version. 

```sh
docker tag iron/base:latest iron/base:X.Y.Z
```

Push:

```sh
docker push iron/base
```
