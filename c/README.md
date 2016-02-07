

Use `iron/c:dev` for building your C/C++ programs and `iron/c` for running them.

## Building this image

```sh
docker build -t iron/c:latest .
```

NOTE: Since this doesn't need any C specific stuff, use the versions from the `dev` build.

Tag the version, check it with `docker run --rm iron/c:dev go version`:

```sh
docker tag -f iron/c:latest iron/c:5
docker tag -f iron/c:latest iron/c:5.Y
docker tag -f iron/c:latest iron/c:5.Y.Z
```

Push:

```sh
docker push iron/go
```
