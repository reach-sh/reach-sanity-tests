#!/bin/sh
set -ex

# Usage:
# sbin/image_check.sh reach REACHC_HASH hs

NAME="$1"
HASHNAME="$2"
SUBFOLDER="$3"

VERSION=$(/tmp/reach numeric-version)
HASH=$(docker run --entrypoint /bin/sh "reachsh/$NAME:$VERSION" -c 'echo $'"$HASHNAME")

if [ "x$HASH" = "x" ] ; then
  echo "no value found for $HASHNAME"
  exit 1
fi

cd /tmp/reach-lang || exit 1
git diff --exit-code "$HASH" "$SUBFOLDER/"
