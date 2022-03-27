# docker-ansible-lint

Alternative alpine based docker image for ansible-lint

[![Docker CI Build](https://github.com/bkram/docker-ansible-lint/actions/workflows/docker-image.yml/badge.svg)](https://github.com/bkram/docker-ansible-lint/actions/workflows/docker-image.yml)

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
