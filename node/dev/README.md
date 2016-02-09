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
