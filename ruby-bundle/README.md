This image is for building your dependencies. You should use
treeder/ruby to run them (way, way smaller image).

## Using

```sh
docker run --rm -v $PWD:/app -w /app treeder/ruby-bundle sh -c 'bundle install --standalone --clean'
```

## Building

```sh
docker build -t treeder/ruby-bundle:latest .
```

Push:

```sh
docker push treeder/ruby-bundle
```
