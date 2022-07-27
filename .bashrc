#! /bin/bash

HISTFILE=~/.history
HISTSIZE=50000

set -o vi

alias cp='cp -i'
alias l='ls -aF'
alias ll='ls -lahFG'
alias mv='mv -i'
alias rm='rm -i'
alias grep='grep --color'

if [ "$(basename "${SHELL}")" = "bash" ]
then
  export PS1="\u@\h \w\n> "
fi

[ -f ~/.bashrc.local ] && source ~/.bashrc.local
