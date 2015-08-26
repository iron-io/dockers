
## Using

```sh
docker run -it --rm iron/php php -v
```

## Building this image

```sh
docker build -t iron/php:latest .
```

Tag the version, check it with `docker run --rm iron/php php -v`:

```sh
docker tag iron/php:latest iron/php:X.Y.Z
```

Push:

```sh
docker push iron/php
```
