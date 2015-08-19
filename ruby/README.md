
## Using

See iron/ruby-bundle README for how to vendor your dependencies:

Test your code:

```sh
docker run --rm -it -v $PWD:/app -w /app iron/ruby ruby hello.rb
```

## Building an image

Make a Dockerfile:

```
FROM iron/ruby

WORKDIR /app
ADD . /app

ENTRYPOINT ["ruby", "hello.rb"]
```

Build the image:

```sh
docker build -t username/imagename:latest .
```

Push it to Docker Hub:

```sh
docker push username/imagename
```
