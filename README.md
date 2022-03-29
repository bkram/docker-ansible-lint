# docker-ansible-lint

Alternative Alpine based docker image for ansible-lint

[![Create and publish a Docker image](https://github.com/bkram/docker-ansible-lint/actions/workflows/build-publish-docker.yml/badge.svg?branch=release)](https://github.com/bkram/docker-ansible-lint/actions/workflows/build-publish-docker.yml)

## Using the image from ghcr.io

Running ansible-lint in your current directory.

```bash
docker run --rm -v "${PWD}":/ansible ghcr.io/bkram/docker-ansible-lint:latest --force-color
```

## Configuration files

In order of detection the possibilites are:

### Config file specified on the command line

```bash
docker run --rm -v "$PWD"/ansible-lint.yml:/ansible-lint.yml -v "${PWD}":/ansible ghcr.io/bkram/docker-ansible-lint:latest --force-color
```

### Config files are used from the directory mounted in docker

The files are detected in this order :

- .ansible-lint
- .config/ansible-lint.yml

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

## Github actions workflow example

In your repository with ansible code create a file called ``.github/workflows/ansible-lint.yml``

```yaml
---
name: ansible-lint

on:
  push:
    branches: [main]
  pull_request:
    branches: [main]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v2

      - name: Run ansible-lint docker
        run: docker run -v $GITHUB_WORKSPACE:/ansible ghcr.io/bkram/docker-ansible-lint:latest --force-color
```
