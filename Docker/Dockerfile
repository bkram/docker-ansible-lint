#Bump
FROM alpine:latest
LABEL org.opencontainers.image.source https://github.com/bkram/docker-ansible-lint
LABEL org.opencontainers.image.description Yet an alternative ansible-lint docker image
ENV PYTHONUNBUFFERED=1

RUN apk add --no-cache python3 python3-dev py-pip gcc libc-dev libffi-dev git && \
    pip install --upgrade pip wheel && \
    pip install ansible-lint && \
    apk del gcc python3-dev libc-dev libffi-dev && \
    rm -rf /var/cache/apk/*

RUN adduser -D ansible
COPY launch.sh /launch.sh
RUN chmod +x /launch.sh

USER ansible
WORKDIR /ansible
ENTRYPOINT ["/launch.sh"]
