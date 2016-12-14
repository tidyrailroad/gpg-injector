#!/bin/sh

( [ ! -f /root/bin/gpg ] || ( echo "There is already a file there." && exit 64 )) &&
  ( [ ! -d /root/bin/gpg ] || ( echo "There is already a directory there." && exit 65 )) &&
  ( [ ! -x /root/bin/gpg ] || ( echo "There is already a device there." && exit 66 )) &&
  docker pull ${GPG_IMAGE} &&
  sed \
      -e "s#\${GPG_IMAGE}#${GPG_IMAGE}#" \
      -e "s#\${DOT_GNUPG}#${DOT_GNUPG}#" \
      -e "w/root/bin/gpg" \
      /opt/docker/program.sh &&
  chmod 0500 /root/bin/gpg &&
  true