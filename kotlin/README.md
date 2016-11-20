## Building this image

```sh
docker build -t iron/kotlin:latest .
```

Tag the version, check it with `docker run --rm iron/kotlin kotlin -version`:

```sh
docker tag -f iron/kotlin:latest iron/kotlinscala:X
docker tag -f iron/kotlin:latest iron/kotlin:X.Y
docker tag -f iron/kotlin:latest iron/kotlin:X.Y.Z
```

Push:

```sh
docker push iron/kotlin
```

Updating Kotlin version:

Go to https://github.com/JetBrains/kotlin/releases/ for the latest releases.