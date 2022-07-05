# Misc Dockerfiles

A repo containing misc Dockerfiles.

Some of these are available via [Dockerhub](https://hub.docker.com/u/ingelabs).

## Multi-arch build instructions

Based on [John Rofrano's instructions](https://github.com/rofrano/vagrant-docker-provider#build-multi-archtecture-image):

### Initialize builder

If you don't have a builder you must first create one:

```sh
% export DOCKER_BUILDKIT=1
% docker buildx create --use --name=qemu
qemu
% docker buildx inspect --bootstrap
```

### Building a multi-arch image

```sh
docker buildx build --tag {account}/{name:tag} --platform=linux/amd64,linux/arm64 --push .
```

This will use QEMU to build a multi-platform image and push it to docker hub.
