# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ..='cd ..'
alias cgrep='find . -type f -regex ".*\.\(c\|h\|s\|S\|py\)" -print0 | xargs -0 grep --color=auto -n'
alias view='vim -R'
