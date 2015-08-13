Ruby and Docker in Docker on Alpine.

## Usage

Start container:

```sh
docker run --name dind -it --privileged -d -p 8080-8090:8080-8090 treeder/ruby-dind
```

Then run commands in it:

```sh
docker exec -it dind ruby -v
```

Or to run an app (assuming you have app.rb in directory you started the dind daemon in):

```sh
docker exec -it dind docker run -e "PORT=8080" -p 8080:8080 treeder/hello-sinatra
```

And how about another one at the same time:

```sh
docker exec -it dind docker run -e "PORT=8081" -p 8081:8081 treeder/hello-sinatra
```
