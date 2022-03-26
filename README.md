# docker-ansible-lint

Alternative docker image for ansible-lint

## Build the image

```bash
docker build Docker -t bkram/docker-ansible-lint
```

## Using the image

```bash
docker run -v <PATH>:/ansible bkram/docker-ansible-lint
```
