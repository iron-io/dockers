## Using

```sh
docker run -it --rm iron/perl perl -v
```

## Building this image

```sh
docker build -t iron/perl:latest .
```

Tag the version, check it with `docker run --rm iron/perl perl -v`:

```sh
docker tag -f iron/perl:latest iron/perl:5
docker tag -f iron/perl:latest iron/perl:5.Y
docker tag -f iron/perl:latest iron/perl:5.Y.Z
```

Push:

```sh
docker push iron/perl
```
