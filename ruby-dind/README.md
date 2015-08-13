Ruby and Docker in Docker on Alpine.

## Usage

Start container:

```sh
docker run --name dind -it --privileged -d -v $PWD:/app -w /app treeder/ruby-dind
```

Then run commands in it:

```sh
docker exec -it dind ruby -v
```

Or to run an app (assuming you have app.rb in directory you started the dind daemon in):

```sh
docker exec -it dind ruby app.rb
```
