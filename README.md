# My Dockerfiles

source repository for https://hub.docker.com/u/whitekid/

## alpine

- `3.8-buildbase`, `buildbase` ([alpine/3.8/buildbase/Dockerfile](https://github.com/whitekid/dockerfiles/blob/master/alpine/3.8/buildbase/Dockerfile)):
  includes build-base packages for build
- `3.8-curl`, `curl`, `runtime`: ([alpine/3.8/curl](https://github.com/whitekid/dockerfiles/tree/master/alpine/3.8/curl)):
  include ca-certificates for runtime

## debian

- `stretch-curl`, `curl`, `runtime`: ([debian/stretch/curl/Dockerfile](https://github.com/whitekid/dockerfiles/blob/master/debian/stretch/curl/Dockerfile)):
  runtime image

## golang

### alpine

- `1.11-alpine3.8`, `1.11-alpine`, `alpine` ([golang/1.11/alpine3.8/Dockerfile](https://github.com/whitekid/dockerfiles/blob/master/golang/1.11/alpine3.8/Dockerfile)):
  includes build-base for go build
- `1.11-alpine3.8-dep`, `1.11-alpine-dep`, `alpine-dep`: ([golang/1.11/alpine3.8/dep/Dockerfile](https://github.com/whitekid/dockerfiles/blob/master/golang/1.11/alpine3.8/dep/Dockerfile)):
  include build-base and dep package manager

### debian

- `1.11-dep`, `dep` ([golang/1.11/dep/Dockerfile](https://github.com/whitekid/dockerfiles/blob/master/golang/1.11/dep/Dockerfile)):
  include dep
