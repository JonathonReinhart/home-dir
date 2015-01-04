#!/bin/bash
# Updates this repository with the versions of these files in the home directory.
rsync -av --no-perms --existing ~/ .
