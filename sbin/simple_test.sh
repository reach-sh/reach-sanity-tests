#!/bin/sh
set -ex

DIR="$1"

rm -rf "/tmp/$DIR" && mkdir -p "/tmp/$DIR" && cd "/tmp/$DIR" || exit 1
cp "/tmp/reach-lang/examples/$DIR"/index{.mjs,.rsh} .

/tmp/reach run