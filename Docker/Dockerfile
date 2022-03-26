FROM ubuntu:latest
ENV PYTHONUNBUFFERED=1
RUN useradd -m ansible && \
    apt update && \
    apt install -y python3-pip git && \
    pip install ansible-lint 
USER ansible
WORKDIR /ansible
ENTRYPOINT [ "ansible-lint", "-c", "/ansible/.config/ansible-lint.yml", "--force-color"]