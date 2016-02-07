[![](http://badge-imagelayers.iron.io/iron/mono:dev.svg)](http://imagelayers.iron.io/?images=iron/mono:dev 'Get your own badge on imagelayers.iron.io')

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
