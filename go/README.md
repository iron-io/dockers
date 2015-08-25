
## Using


## Building an image for your Go app

TODO: Build it into a base image, don't really need Go in it.

## Building

```sh
docker build -t iron/go:latest .
```

Tag it with Go version too:

```sh
docker tag iron/go:latest iron/go:1.4.2
```

Push:

```sh
docker push iron/go
```
