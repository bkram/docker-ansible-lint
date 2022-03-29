#!/bin/sh
ARGS=""

if [ -e "/ansible-lint.yml" ]; then
    ARGS=${ARGS}"-c /ansible-lint.yml"
elif [ -e "/ansible/.ansible-lint" ]; then
    ARGS=${ARGS}"-c /ansible/.ansible-lint"
elif [ -e "/ansible/.config/ansible-lint.yml" ]; then
    ARGS=${ARGS}"-c /ansible/.config/ansible-lint.yml"
fi

echo "Launching: ansible-lint ""${ARGS}" "$@"
ansible-lint ${ARGS} "$@"
