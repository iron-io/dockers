Image on Docker Hub: https://hub.docker.com/r/iron/php

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
docker tag -f iron/php:latest iron/php:5
docker tag -f iron/php:latest iron/php:5.Y
docker tag -f iron/php:latest iron/php:5.Y.Z
```

Push:

```sh
docker push iron/php
```
