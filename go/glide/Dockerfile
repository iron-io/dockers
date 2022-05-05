FROM iron/go:dev

RUN apk update && apk upgrade
RUN wget https://github.com/Masterminds/glide/releases/download/v0.13.3/glide-v0.13.3-linux-amd64.tar.gz
RUN tar -C /bin -xvzf glide-v0.13.3-linux-amd64.tar.gz --strip=1
