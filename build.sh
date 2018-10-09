#!/bin/bash -e

REPO="whitekid"

function build() {
    local dockerfile=$1
    local tag=$2
    local aliases=$3

    docker build -t "${REPO}/${tag}" --pull -f ${dockerfile} $(dirname ${dockerfile})
    docker push "${REPO}/${tag}"
    for alias in ${aliases}; do
        docker tag "${REPO}/${tag}" "${REPO}/${alias}"
        docker push "${REPO}/${alias}"
    done
}

build alpine/3.8/curl/Dockerfile alpine:3.8-curl \
    "alpine:curl
     alpine:3.8-runtime
     alpine:runtime"

build alpine/3.8/buildbase/Dockerfile alpine:3.8-buildbase \
    "alpine:3.8-buildbase
     alpine:buildbase"

build debian/stretch/curl/Dockerfile debian:stretch-curl \
    "debian:stretch-runtime
     debian:runtime"

build golang/1.11/alpine3.8/Dockerfile golang:1.11-alpine3.8 \
    "golang:alpine3.8
     golang:alpine"

build golang/1.11/alpine3.8/dep/Dockerfile golang:1.11-alpine3.8-dep \
    "golang:alpine3.8-dep
     golang:alpine-dep"

build golang/1.11/dep/Dockerfile golang:1.11-dep \
    "golang:dep"
