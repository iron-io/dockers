

Use `iron/go:dev` for building your Go programs and `iron/go` for running them. 

## Building this image


```sh
docker build -t iron/go:latest .
```

NOTE: Since this doesn't need any Go specific stuff, use the versions from the `dev` build.

Tag the version, check it with `docker run --rm iron/go:dev go version`:

```sh
docker tag iron/go:latest iron/go:1
docker tag iron/go:latest iron/go:1.5
docker tag iron/go:latest iron/go:1.5.Z
```

Push:

```sh
docker push iron/go
```
