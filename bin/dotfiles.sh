#!/bin/bash

set -e

if ! [ -x "$(command -v ansible)" ]; then
    sudo apt install -y ansible
fi
