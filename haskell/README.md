A Haskell microcontainer image. 

GHC is installed so you can run either stack --system-ghc or use stack setup to install GHC.

## Building this image

```sh
docker build -t iron/haskell:9 .
```
or 

```sh
docker build -t iron/haskell:latest .
```
For the latest version of Haskell

Tag the version, check it with `docker run --rm iron/haskell haskell -version`:

```sh
docker tag -f iron/haskell:latest iron/haskell:X
docker tag -f iron/haskell:latest iron/haskell:X.Y
docker tag -f iron/haskell:latest iron/haskell:X.Y.Z
```

Push:

```sh
docker push iron/haskell
```

