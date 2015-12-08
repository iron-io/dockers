
## Using

```sh
docker run -it --rm iron/php:dev composer install
```

## Building this image

```sh
docker build -t iron/php:dev .
```

Tag the version, check it with `docker run --rm iron/php:dev sh -c 'php --version && composer --version'`:

```sh
docker tag -f iron/php:dev iron/php:5-dev
docker tag -f iron/php:dev iron/php:5.Y-dev
docker tag -f iron/php:dev iron/php:5.Y.Z-dev
```

Push:

```sh
docker push iron/php
```
