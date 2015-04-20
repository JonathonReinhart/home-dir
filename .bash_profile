# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

export PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PYTHONSTARTUP=~/.pystartup

# http://stackoverflow.com/a/2596835/119527
export VISUAL=vim
export EDITOR="$VISUAL"
