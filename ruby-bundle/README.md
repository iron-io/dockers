This image is for building your dependencies. You should use
iron/ruby to run them (way smaller image).

## Using

Vendor your dependencies:

```sh
docker run --rm -v $PWD:/app -w /app iron/ruby-bundle bundle install --standalone --clean
docker run --rm -v $PWD:/app -w /app iron/ruby-bundle bundle install --standalone --clean
sudo chmod -R a+rw .bundle
sudo chmod -R a+rw bundle
```

Add the following to your code so it uses the vendored gems:

```ruby
require_relative 'bundle/bundler/setup'
```

See iron/ruby image for running your code:

## Building

```sh
docker build -t iron/ruby-bundle:latest .
```

Push:

```sh
docker push iron/ruby-bundle
```
