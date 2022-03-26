FROM ubuntu:latest
LABEL org.opencontainers.image.source https://github.com/bkram/docker-ansible-lint
LABEL org.opencontainers.image.description Yet an alternative ansible-lint docker image
ENV PYTHONUNBUFFERED=1
RUN useradd -m ansible && \
    apt update && \
    apt install -y python3-pip git && \
    pip install ansible-lint 
USER ansible
WORKDIR /ansible
ENTRYPOINT [ "ansible-lint", "-c", "/ansible/.config/ansible-lint.yml", "--force-color"]