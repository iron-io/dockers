
This is the [Iron.io CLI tool](https://github.com/iron-io/ironcli) inside a Docker container.
Usage is essentially the same except you need to use `docker run` per examples below. See
the [ironcli README](https://github.com/iron-io/ironcli) for more details.

## Usage

Check cli version:

```sh
docker run --rm iron/cli --version
```

Queue up a worker job:

```sh
docker run --rm iron/cli worker queue MYWORKER
```


## Building this image

```sh
./build.sh
```

Should version it based on the cli version too:

```sh
docker tag iron/cli:latest iron/cli:X.Y.Z
```

Push:

```sh
docker push iron/cli
```
