
## Using

```sh
docker run -it --rm iron/python python --version
```

## Building this image

```sh
docker build -t iron/python-pip:latest .
```

Tag the version, check it with `docker run --rm iron/python python --version`:

```sh
docker tag iron/python:latest iron/python:X.Y.Z
```

Push:

```sh
docker push iron/python
```
