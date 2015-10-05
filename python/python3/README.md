
## Using

```sh
docker run -it --rm iron/python3 python3 --version
```

## Building this image

```sh
docker build -t iron/python3:latest .
```

Tag the version, check it with `docker run --rm iron/python3 python3 --version`:

```sh
docker tag iron/python3:latest iron/python3:X.Y.Z
```

Push:

```sh
docker push iron/python3
```
