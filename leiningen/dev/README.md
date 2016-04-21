# Leiningen Docker image

This is a small [Alpine Linux](http://www.alpinelinux.org/) based image for running Clojure applications 
that are built using [Leiningen](http://leiningen.org/).

## Run

To run a Clojure repl:

```sh
docker run -it iron/leiningen:dev lein repl
```

## Build this image

```sh
ruby build.rb
```
