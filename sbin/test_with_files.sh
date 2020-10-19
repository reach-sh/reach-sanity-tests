#!/bin/sh
set -ex

DIR="$1"
shift

rm -rf "/tmp/$DIR" && mkdir -p "/tmp/$DIR" && cd "/tmp/$DIR" || exit 1
for FILE in "$@" ; do
  cp "/tmp/reach-lang/examples/$DIR/$FILE" .
done

/tmp/reach run

# Docker annoyingly runs as root on CircleCI
if [ "x$CI" != "x" ] ; then
  sudo chown "$(whoami)" build
  sudo chown "$(whoami)" build/*
fi

/tmp/reach down
