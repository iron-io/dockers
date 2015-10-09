This image is for building your dependencies. You should use
iron/node to run them (smaller image).

## Building

```sh
docker build -t iron/node:dev .
```

Tag the ruby version, check it with `docker run --rm iron/node:dev node -v`:

```sh
docker tag iron/ruby:dev iron/ruby:2-dev
docker tag iron/ruby:dev iron/ruby:2.Y-dev
docker tag iron/ruby:dev iron/ruby:2.Y.Z-dev
```


Push:

```sh
docker push iron/ruby-bundle
```
