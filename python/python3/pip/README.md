
## Using

```sh
docker run -it --rm iron/python python --version
```

## Building this image

```sh
docker build -t iron/python:dev .
```

Tag the version, check it with `docker run --rm iron/python:3-dev python3 --version`:

```sh
docker tag iron/python:latest iron/python:3-dev
docker tag iron/python:latest iron/python:3.Y-dev
docker tag iron/python:latest iron/python:3.Y.Z-dev
```

Push:

```sh
docker push iron/python
```
