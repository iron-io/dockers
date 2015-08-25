
This is the [Iron.io CLI tool](https://github.com/iron-io/ironcli) inside a Docker container.
Usage is essentially the same except you need to use `docker run` per examples below. See
the [ironcli README](https://github.com/iron-io/ironcli) for more details.

## Usage

NOTE: This requires you to set your Iron.io credentials as environment variables, eg:

```sh
export IRON_TOKEN=YOURTOKEN
export IRON_PROJECT_ID=YOURPROJECT_ID
```

Check cli version:

```sh
docker run --rm iron/cli --version
```

Upload a worker:

```sh
docker run --rm -e IRON_TOKEN -e IRON_PROJECT_ID iron/cli worker upload --name hello treeder/hello.rb
```

Queue up a worker:

```sh
docker run --rm -e IRON_TOKEN -e IRON_PROJECT_ID iron/cli worker queue hello
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
