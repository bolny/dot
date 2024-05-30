#! /bin/zsh

autoload -U compinit
compinit

setopt INC_APPEND_HISTORY

PATH="${HOME}/.bin:${PATH}"
PATH="${HOME}/.local/bin:${PATH}"
TTY=$(tty)
HOSTNAME=$(hostname)

export PATH
export KEYTIMEOUT=1
export GPG_TTY=$TTY
export HOMEBREW_BUNDLE_FILE_GLOBAL="${HOME}/.config/brewfile/${HOSTNAME}.Brewfile"

HISTFILE=~/.history
HISTSIZE=50000

bindkey -v

alias dot='git \
  --git-dir=${HOME}/Source/github.com/bolny/dot.git/ \
  --work-tree=${HOME}'
alias venv='source .venv/bin/activate'

alias cp='cp -i'
alias ll='ls -lahFG'
alias mv='mv -i'
alias rm='trash'
alias gg='git grep'
alias brew='arch -arm64 brew'

alias vi='vim'
alias v='vim'
alias t='tmux'

if type "starship" > /dev/null
then
    eval "$(starship init zsh)"
fi
