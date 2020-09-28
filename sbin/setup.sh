#!/bin/sh
set -ex

cd /tmp || exit 1
rm -rf reach-lang
git clone https://github.com/reach-sh/reach-lang

# https://docs.reach.sh/tut-0.html
curl https://raw.githubusercontent.com/reach-sh/reach-lang/master/reach -o reach ; chmod +x reach
./reach version
./reach update
./reach compile --help
