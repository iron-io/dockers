
## Using


## Building an image for your Go app

TODO: Build it into a base image, don't really need Go in it.

## Building this image


```sh
docker build -t iron/go:latest .
```

Tag the version, check it with `docker run --rm iron/go go version`:

```sh
docker tag iron/go:latest iron/go:1
docker tag iron/go:latest iron/go:1.5
docker tag iron/go:latest iron/go:1.5.Z
```

Push:

```sh
docker push iron/go
```
