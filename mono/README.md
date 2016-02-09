[![](http://badge-imagelayers.iron.io/iron/mono:latest.svg)](http://imagelayers.iron.io/?images=iron/mono:latest 'Get your own badge on imagelayers.iron.io')

## Using

```sh
docker run -it --rm iron/mono mono --version
```

## Building this image

```sh
docker build -t iron/mono:latest .
```

Tag the version, check it with `docker run --rm iron/mono mono --version`:

```sh
docker tag -f iron/mono:latest iron/mono:X
docker tag -f iron/mono:latest iron/mono:X.Y
docker tag -f iron/mono:latest iron/mono:X.Y.Z
```

Push:

```sh
docker push iron/mono
```
