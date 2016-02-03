
## Using

```sh
docker run -it --rm iron/python:2 python --version
```

## Building this image

```sh
docker build -t iron/python:2 .
```

Tag the version, check it with `docker run --rm iron/python:2 python --version`:

```sh
docker tag iron/python:2 iron/python:2.Y
docker tag iron/python:2 iron/python:2.Y.Z
```

Push:

```sh
docker push iron/python
```
