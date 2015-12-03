
## Using


## Building an image for your Go app

TODO: Build it into a base image, don't really need Go in it.

## Building this image


```sh
docker build -t iron/go:dev .
```

Tag the version, check it with `docker run --rm iron/go:dev go version`:

```sh
docker tag -f iron/go:dev iron/go:1-dev
docker tag -f iron/go:dev iron/go:1.5-dev
docker tag -f iron/go:dev iron/go:1.5.Z-dev
```

Push:

```sh
docker push iron/go
```
