

## Usage

It's easy, try any heroku command like this:

```
docker run --rm -i -t -v $HOME:/root -v $PWD:/app -w /app treeder/heroku heroku apps
```

We mount /root so it can write the heroku credentials to .netrc.

Check the logs:

```
docker run --rm -i -t -v $HOME:/root -v $PWD:/app -w /app treeder/heroku heroku logs
```

Or adding the heroku git remote:

```
docker run --rm -i -t -v $HOME:/root -v $PWD:/app -w /app treeder/heroku heroku git:remote -a falling-wind-1624
```

## Building

```sh
docker build -t treeder/heroku:VERSION .
```

Push:

```sh
docker push treeder/heroku
```
