

## Usage

It's easy, try any heroku command like this:

```
docker run --rm -i -t -v $HOME:/root -v $PWD:/app -w /app treeder/heroku heroku apps
```
or
```
docker run --rm -i -t -v $HOME:/root -v $PWD:/app -w /app treeder/heroku heroku logs
```

We mount /root so it can write the heroku credentials to .netrc.


## Building

```sh
docker build -t treeder/heroku:VERSION .
```

Push:

```sh
docker push treeder/heroku
```
