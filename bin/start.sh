#!/usr/bin/env bash

set -e

if ! [ -x "$(command -v ansible)" ]; then
    sudo apt install -y ansible
fi

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

ansible-playbook --diff --check\
  -i "${PROJECT_ROOT}/hosts" "${PROJECT_ROOT}/main.yaml" \
  --ask-become-pass --ask-vault-pass \
  -e "ansible_python_interpreter=$(which python3)"
