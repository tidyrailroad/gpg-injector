#!/bin/sh

docker \
  run \
  --interactive \
  --tty \
  --rm \
  --volume ${DOT_GNUPG}:/root/.gnupg \
  ${GPG_IMAGE} \
  ${@} &&
  true
