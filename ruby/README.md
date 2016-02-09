[![](http://badge-imagelayers.iron.io/iron/ruby:latest.svg)](http://imagelayers.iron.io/?images=iron/ruby:latest 'Get your own badge on imagelayers.iron.io')

Image on Docker Hub: https://hub.docker.com/r/iron/ruby

## Using this image for your Ruby apps/programs

### 1. Vendor dependencies (if you update your Gemfile, rerun this):

```sh
docker run --rm -v "$PWD":/worker -w /worker iron/ruby:dev bundle install --standalone --clean
```

If you're using Nokogiri, use this one:

```sh
docker run --rm -v "$PWD":/worker -w /worker iron/ruby:dev sh -c 'bundle config --local build.nokogiri --use-system-libraries && bundle install --standalone --clean'
```

Then require the vendored gems. Notice in `hello.rb`, we add the following so it uses the vendored gems:

```ruby
require_relative 'bundle/bundler/setup'
```

### 2. Test your code

Test your code:

```sh
docker run --rm -it -v $PWD:/app -w /app iron/ruby ruby hello.rb
```

Notice we're using iron/ruby:dev to build and iron/ruby to run. iron/ruby is much smaller.

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
docker tag iron/ruby:latest iron/ruby:X
docker tag iron/ruby:latest iron/ruby:X.Y
docker tag iron/ruby:latest iron/ruby:X.Y.Z
```

Push:

```sh
docker push iron/ruby
```
