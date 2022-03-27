#!/bin/sh
CMD="ansible-lint"
ARGS=""

if [ -e "/ansible/.config/ansible-lint.yml" ]; then
    ARGS=${ARGS}" -c /ansible/.config/ansible-lint.yml"
fi

${CMD} "{$ARGS}" "${@}"
