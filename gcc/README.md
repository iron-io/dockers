[![](http://badge-imagelayers.iron.io/iron/gcc:latest.svg)](http://imagelayers.iron.io/?images=iron/gcc:latest 'Get your own badge on imagelayers.iron.io')

Use `iron/gcc:dev` for building your C/C++ programs and `iron/gcc` for running them.

## Building this image

```sh
docker build -t iron/gcc:latest .
```

NOTE: Since this doesn't need any C specific stuff, use the versions from the `dev` build.

Tag the version, check it with `docker run --rm iron/gcc:dev gcc -v`:

```sh
docker tag -f iron/gcc:latest iron/gcc:5
docker tag -f iron/gcc:latest iron/gcc:5.Y
docker tag -f iron/gcc:latest iron/gcc:5.Y.Z
```

Push:

```sh
docker push iron/go
```
