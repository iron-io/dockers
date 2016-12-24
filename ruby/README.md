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

### 3. Build a Docker image for your Ruby app

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

Push it to DockerHub:

```sh
docker push username/imagename
```
### 4. Push to Iron.io 

When running as a worker, push via [`iron` CLI](https://github.com/iron-meteor/iron-cli#usage): 

```sh
iron worker upload -name appname -e ENV_TOKEN=$TOKEN username/imagename:latest
```

