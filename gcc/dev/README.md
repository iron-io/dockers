[![](http://badge-imagelayers.iron.io/iron/gcc:dev.svg)](http://imagelayers.iron.io/?images=iron/gcc:dev 'Get your own badge on imagelayers.iron.io')

## Using

TODO:

## Building this image


```sh
docker build -t iron/gcc:dev .
```

Tag the version, check it with `docker run --rm iron/gcc:dev gcc -v`:

```sh
docker tag -f iron/gcc:dev iron/gcc:5-dev
docker tag -f iron/gcc:dev iron/gcc:5.Y-dev
docker tag -f iron/gcc:dev iron/gcc:5.Y.Z-dev
```

Push:

```sh
docker push iron/go
```
