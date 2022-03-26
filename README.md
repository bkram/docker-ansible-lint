# docker-ansible-lint

Alternative docker image for ansible-lint

Status: [![Docker Image CI](https://github.com/bkram/docker-ansible-lint/actions/workflows/docker-image.yml/badge.svg)](https://github.com/bkram/docker-ansible-lint/actions/workflows/docker-image.yml)

## Build the image

```bash
docker build Docker -t bkram/docker-ansible-lint
```

## Using the image

```bash
docker run --rm -v <PATH>:/ansible bkram/docker-ansible-lint
```
