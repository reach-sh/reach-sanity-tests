#!/bin/sh
set -ex

sbin/image_check.sh stdlib js
sbin/image_check.sh runner js
sbin/image_check.sh react_runner js
