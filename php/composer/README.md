
## Using

```sh
docker run -it --rm iron/php-composer composer install
```

## Building this image

```sh
docker build -t iron/php-composer:latest .
```

Tag the version, check it with `docker run --rm iron/php-composer composer --version`:

```sh
docker tag iron/php-composer:latest iron/php-composer:X.Y.Z
```

Push:

```sh
docker push iron/php-composer
```
