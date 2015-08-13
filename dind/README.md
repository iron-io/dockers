Docker in Docker on Alpine Linux.

## Usage

Start container:

```sh
docker run --name dind -it --privileged -d treeder/dind
```

Then run commands in it:

```sh
docker exec -it dind docker ps
```

## Thanks

To RancherOS for making this: https://github.com/rancher/docker-from-scratch
