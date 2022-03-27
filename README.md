# docker-ansible-lint

Alternative Alpine based docker image for ansible-lint

[![Create and publish a Docker image](https://github.com/bkram/docker-ansible-lint/actions/workflows/build-publish-docker.yml/badge.svg?branch=release)](https://github.com/bkram/docker-ansible-lint/actions/workflows/build-publish-docker.yml)

## Using the image from ghcr.io

Running ansible-lint in your current directory.

```bash
docker run --rm -v "${PWD}":/ansible ghcr.io/bkram/docker-ansible-lint:latest --force-color
```

## Doing it yourself

### Build the image

Building the provided Dockerfile

```bash
docker build Docker -t bkram/docker-ansible-lint
```

### Using the image

Running ansible-lint in your current directory.

```bash
docker run --rm -v "${PWD}":/ansible bkram/docker-ansible-lint --force-color
```
