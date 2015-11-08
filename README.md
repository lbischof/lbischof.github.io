# Docker

## Build
```sh
docker build -t lbischof/middleman .
```

## Run 
```sh
docker run --rm -it -v "$PWD":/usr/src/app -p 4567:4567 lbischof/middleman
```

## Deploy
```sh
docker run --rm -it -v "$PWD":/usr/src/app lbischof/middleman build
git subtree push --prefix build origin master
```

## Update 
```sh
docker run --rm -it -v "$PWD":/usr/src/app --entrypoint /bin/bash -u root lbischof/middleman 
bundle update
```
Then rebuild the docker image.
