
## Using

```sh
docker run -it --rm iron/python3 python3 --version
```

## Building this image

```sh
docker build -t iron/python:latest .
```

Tag the version, check it with `docker run --rm iron/python python3 --version`:

```sh
docker tag iron/python:latest iron/python:3
docker tag iron/python:latest iron/python:3.Y
docker tag iron/python:latest iron/python:3.Y.Z
```

Push:

```sh
docker push iron/python
```
