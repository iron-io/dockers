## Using

```sh
docker run -it --rm iron/perl:dev perl -v
```

## Building this image

```sh
docker build -t iron/perl:dev .
```

Tag the version, check it with `docker run --rm iron/perl perl -v`:

```sh
docker tag -f iron/perl:dev iron/perl:5-dev
docker tag -f iron/perl:dev iron/perl:5.Y-dev
docker tag -f iron/perl:dev iron/perl:5.Y.Z-dev
```

Push:

```sh
docker push iron/perl
```
