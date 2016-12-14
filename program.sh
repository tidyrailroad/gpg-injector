#!/bin/sh

docker \
  run \
  --interactive \
  --tty \
  --rm \
  --volume ${DOT_GNUPG}:/root/.gnupg:ro \
  ${GPG_IMAGE} \
  ${@} &&
  true