[![Build Status](https://travis-ci.org/lbischof/lbischof.github.io.svg?branch=source)](https://travis-ci.org/lbischof/lbischof.github.io)

This is my personal website.

# Docker

## Build
```sh
docker build -t lbischof/middleman .
```

## Run
```sh
docker run --rm -it -v "$PWD":/usr/src/app -p 4567:4567 lbischof/middleman
```

## Update
```sh
docker run --rm -it -v "$PWD":/usr/src/app --entrypoint bundle lbischof/middleman update
```
