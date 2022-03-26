FROM alpine:latest
LABEL org.opencontainers.image.source https://github.com/bkram/docker-ansible-lint
LABEL org.opencontainers.image.description Yet an alternative ansible-lint docker image
ENV PYTHONUNBUFFERED=1
RUN adduser -D ansible && \
    apk add --no-cache python3 python3-dev py-pip gcc libc-dev libffi-dev git && \
    pip install --upgrade pip && \
    pip install ansible-lint && \
    apk del gcc python3-dev libc-dev libffi-dev && \
    rm -rf /var/cache/apk/*
USER ansible
WORKDIR /ansible
ENTRYPOINT [ "ansible-lint", "-c", "/ansible/.config/ansible-lint.yml", "--force-color"]
