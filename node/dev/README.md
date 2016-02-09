[![](http://badge-imagelayers.iron.io/iron/node:dev.svg)](http://imagelayers.iron.io/?images=iron/node:dev 'Get your own badge on imagelayers.iron.io')

This image is for building your dependencies. You should use
iron/node to run them (smaller image).

## Building

**NOTE: Temporarily using [mhart/alpine-node](https://github.com/mhart/alpine-node) for v5 images until Alpine package updated.**

```sh
ruby build.rb
```

Push:

```sh
docker push iron/node
```
