

## Usage

It's easy, try any heroku command.

For instance, to login (one time only):

```sh
docker run --rm -it -v $HOME:/root -v $PWD:/app -w /app treeder/heroku heroku login
```

We mount /root so it can write the heroku credentials to .netrc.


```sh
docker run --rm -it -v $HOME:/root -v $PWD:/app -w /app treeder/heroku heroku apps
```

Check the logs:

```sh
docker run --rm -it -v $HOME:/root -v $PWD:/app -w /app treeder/heroku heroku logs
```

Or adding a heroku git remote:

```sh
docker run --rm -it -v $HOME:/root -v $PWD:/app -w /app treeder/heroku heroku git:remote -a falling-wind-1624
```

## Building

```sh
docker build -t treeder/heroku:latest .
```

Push:

```sh
docker push treeder/heroku
```
