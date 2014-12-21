#!/bin/bash
# Updates this repository with the versions of these files in the home directory.

for f in $(find . -type f -not -path './.git/*' -printf '%P\n'); do
    if [ -f ~/$f ]; then
        cp -v ~/$f .
    fi
done
