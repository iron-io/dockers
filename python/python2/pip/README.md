
## Using

```sh
docker run -it --rm iron/python python --version
```

## Building this image

```sh
docker build -t iron/python:2-dev .
```

Tag the version, check it with `docker run --rm iron/python:2-dev sh -c 'python --version && pip --version'`:

```sh
docker tag iron/python:latest iron/python:2.Y-dev
docker tag iron/python:latest iron/python:2.Y.Z-dev
```

Push:

```sh
docker push iron/python
```
