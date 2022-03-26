# docker-ansible-lint

Alternative docker image for ansible-lint

[![Docker CI Build](https://github.com/bkram/docker-ansible-lint/actions/workflows/docker-image.yml/badge.svg)](https://github.com/bkram/docker-ansible-lint/actions/workflows/docker-image.yml)

## Using the image from ghcr.io

```bash
docker run --rm -v <Ansible Path>:/ansible ghcr.io/bkram/docker-ansible-lint:latest
```

### Doing it yourself

## Build the image

```bash
docker build Docker -t bkram/docker-ansible-lint
```

## Using the image

```bash
docker run --rm -v <Ansible Path>:/ansible bkram/docker-ansible-lint
```
