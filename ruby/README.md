
Image on Docker Hub: https://hub.docker.com/r/iron/ruby

## Using

See iron/ruby-bundle README for how to vendor your dependencies:

Test your code:

```sh
docker run --rm -it -v $PWD:/app -w /app iron/ruby ruby hello.rb
```

## Building an image for your Ruby app:

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


## Building this image

```sh
docker build -t iron/ruby:latest .
```

Tag the ruby version, check it with `docker run --rm iron/ruby ruby -v`:

```sh
docker tag iron/ruby:latest iron/ruby:X.Y.Z
```

Push:

```sh
docker push iron/ruby
```
