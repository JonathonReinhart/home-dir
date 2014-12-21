#!/usr/bin/env bash
# https://github.com/udryan10/.dotfiles/blob/master/bootstrap.sh

cd "$(dirname "${BASH_SOURCE}")"
#git pull origin master

function doIt() {
    # Copy all of the intended files into ~
	rsync \
        --exclude ".git/" \
        --exclude ".DS_Store" \
        --exclude "bootstrap.sh" \
        --exclude "update.sh" \
        --exclude "README.md" \
        -av --no-perms . ~

    # Activate the changes in this session
    source ~/.bash_profile

    # Git stuff
    git config --global core.excludesfile '~/.gitignore_global'
    git config --global color.ui true
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt
