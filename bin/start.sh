#!/usr/bin/env bash

set -e

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

ansible-playbook --diff\
  -i "${PROJECT_ROOT}/hosts" "${PROJECT_ROOT}/main.yaml" \
  --ask-become-pass --ask-vault-pass \
  -e "ansible_python_interpreter=$(which python3)"
