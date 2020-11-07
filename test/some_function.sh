#!/usr/bin/env bash

echo "Hello world"

two_fer() {
    local NAME="${1:-you}"
    echo "One for $NAME, one for me."
}

two_fer "$@"
