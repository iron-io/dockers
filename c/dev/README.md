
## Using

TODO: 

## Building this image


```sh
docker build -t iron/c:dev .
```

Tag the version, check it with `docker run --rm iron/c:dev gcc -v`:

```sh
docker tag -f iron/c:dev iron/c:5-dev
docker tag -f iron/c:dev iron/c:5.Y-dev
docker tag -f iron/c:dev iron/c:5.Y.Z-dev
```

Push:

```sh
docker push iron/go
```
