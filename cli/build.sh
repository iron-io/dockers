#!/bin/bash

git clone https://github.com/iron-io/ironcli.git
cd ironcli

img=iron/go
wd=/go/src/github.com/iron-io/ironcli
docker run --rm -v $PWD:$wd -w $wd $img go build -o iron
# now vendor and build
# docker run --rm -v $PWD:/app -w /app treeder/go vendor
# docker run --rm -v $PWD:/app -w /app treeder/go build -o iron
cp iron ../
cd ..
rm -rf ironcli

docker build -t iron/cli:latest .
# Tag it with the version too
x="$(docker run --rm iron/cli --version)"
echo "$x"
y=${x:1}
echo "y: $y"
docker tag -f iron/cli:latest iron/cli:$y
docker push iron/cli
