
```
BIN=$(docker volume create) &&
  DOT_GNUPG=$(docker volume create) &&
  docker \
    run \
    --interactive \
    --tty \
    --rm \
    --volume ${BIN}:/root/bin \
    --volume ${DOT_GNUPG}:/root/.gnupg \
    --volume /var/run/docker.sock:/var/run/docker.sock:ro \
    emorymerryman/gpg-injector:0.0.1 &&
  docker \
    run \
    --interactive \
    --tty \
    --rm \
    --volume ${BIN}:/root/bin \
    --volume /var/run/docker.sock:/var/run/docker.sock:ro \
    emorymerryman/strongarm:0.2.1 &&
  true
```
