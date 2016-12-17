#!/bin/sh

docker \
  run \
  --interactive \
  --tty \
  --rm \
  --volume ${DOT_GNUPG}:/root/.gnupg \
  --env GPG_TTY=/dev/console \
  ${GPG_IMAGE} \
  ${@} &&
  true
