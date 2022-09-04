#! /bin/bash

# Add user bin paths.
PATH="${HOME}/.bin:${PATH}"
PATH="${HOME}/.local/bin:${PATH}"
export PATH

export EDITOR=vi

HISTFILE=~/.history
HISTSIZE=50000

# Prompt.
export PS1="\u@\h \w\n> "

set -o vi

# Shorten common commands.
alias cp='cp -i'
alias ll='ls -lahFG'
alias mv='mv -i'
alias rm='rm -i'
alias \?='duck'

alias lynx='lynx -cfg ~/.config/lynx/lynx.cfg'

# shellcheck disable=SC1090
[ -f ~/.bashrc.local ] && source ~/.bashrc.local
