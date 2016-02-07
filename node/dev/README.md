[![](http://badge-imagelayers.iron.io/iron/node:dev.svg)](http://imagelayers.iron.io/?images=iron/node:dev 'Get your own badge on imagelayers.iron.io')

This image is for building your dependencies. You should use
iron/node to run them (smaller image).

## Building

```sh
docker build -t iron/node:dev .
```

Tag the ruby version, check it with `docker run --rm iron/node:dev node -v`:

```sh
docker tag -f iron/node:dev iron/node:4-dev
docker tag -f iron/node:dev iron/node:4.Y-dev
docker tag -f iron/node:dev iron/node:4.Y.Z-dev
```


Push:

```sh
docker push iron/node
```
