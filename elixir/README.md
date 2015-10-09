
Image on Docker Hub: https://hub.docker.com/r/iron/elixir

## Building this image

```sh
docker build -t iron/elixir:latest .
```

Tag the version, check it with `docker run --rm iron/elixir elixir -v`:

```sh
docker tag iron/elixir:latest iron/elixir:X
docker tag iron/elixir:latest iron/elixir:X.Y
docker tag iron/elixir:latest iron/elixir:X.Y.Z
```

Push:

```sh
docker push iron/elixir
```
