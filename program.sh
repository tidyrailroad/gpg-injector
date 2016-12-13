#!/bin/sh

docker \
  run \
  --interactive \
  --tty \
  --rm \
  ${GPG_IMAGE} \
  ${@} &&
  true