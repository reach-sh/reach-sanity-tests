#!/bin/sh
set -ex

DIR="$1"

rm -rf "/tmp/$DIR" && mkdir -p "/tmp/$DIR" && cd "/tmp/$DIR" || exit 1
cp "/tmp/reach-lang/examples/$DIR"/index{.mjs,.rsh} .
cp "/tmp/reach-lang/examples/$DIR"/{Dockerfile, Makefile, docker-compose.yml, package.json} .

/tmp/reach run
