# This repository consists docker ubuntu images with docker and systemd installed.

# How to run these images:

## First check your architecture with `dpkg --print-architecture`.If your architecture is amd64

```
docker run -dt --name ubuntu-dind --privileged petschenek/ubuntu-20.04-dind:amd64-v1.0

docker exec -it ubuntu-dind bash

systemctl status docker

docker run --rm -it alpine
```

## If your architecture is arm64

```
docker run -dt --name ubuntu-dind --privileged petschenek/ubuntu-20.04-dind:arm64-v1.0

docker exec -it ubuntu-dind bash

systemctl status docker

docker run --rm -it alpine
```
