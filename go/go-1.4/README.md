
## Using


## Building an image for your Go app

TODO: Build it into a base image, don't really need Go in it.

## Building this image

```sh
docker build -t iron/go:1.4 .
```

Tag it with Go version too: (can check with `docker run --rm iron/go:1.4 go version`):

```sh
docker tag iron/go:1.4 iron/go:1.4.2
```

Push:

```sh
docker push iron/go
```
