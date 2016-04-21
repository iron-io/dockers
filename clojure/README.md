# Leiningen Docker image
This is a small [Alpine Linux](http://www.alpinelinux.org/) based image for running Clojure applications that are built using [Leiningen](http://leiningen.org/).

## Build

    docker build -t leiningen .

## Run
To run a Clojure repl:

	docker run -it leiningen lein repl
