#! /bin/zsh

# Use homebrew autocompletion
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi

# Enable built in autocompletion
autoload -U compinit
compinit

# This appends the history file incrementally allowing shared history between
# terminal windows/tmux panes.
setopt INC_APPEND_HISTORY
HISTFILE=~/.history
HISTSIZE=50000

# Add local scripts to PATH
PATH="${HOME}/.bin:${PATH}"
PATH="${HOME}/.local/bin:${PATH}"
export PATH

# Use the Terminal to unlock GPG keys. Used for passwordstore.
TTY=$(tty)
export GPG_TTY=$TTY

# Use machine local homebrew bundle files
HOSTNAME=$(hostname)
export HOMEBREW_BUNDLE_FILE_GLOBAL="${HOME}/.config/brewfile/${HOSTNAME}.Brewfile"

# This reduces the timeout when sending multiple control characters to the
# terminal. I have it set this way so that I can start typing more quickly after
# changing tmux panes.
export KEYTIMEOUT=1

# Generate usuable LS_COLORS for GNU and compatible utilities (Mostly FD)
if type "vivid" > /dev/null
then
    export LS_COLORS="$(vivid generate solarized-light)"
fi

# Use vim style keybinds.
bindkey -v

# Use GNU ls instead of BSD ls for the aforementioned color support. BSD ls uses
# ansi colors like it should, but I kind of like the look of a properly themed
# GNU ls better.
if type "gls" > /dev/null
then
    alias ls='gls --color'
fi

# Manage dotfiles in git.
alias dot='git \
  --git-dir=${HOME}/Source/github.com/bolny/dot.git/ \
  --work-tree=${HOME}'

# If I have to any of these out one more time I will lose my mind.
alias venv='source .venv/bin/activate' # python virtual environments.
alias ll='ls -lahFG' # Is this compatible with gls?
alias brew='arch -arm64 brew' # Make homebrew use arm64 since I have no Intel

# I have definitely accidentally deleted things before.
alias cp='cp -i'
alias mv='mv -i'
if type "trash" > /dev/null
then
    alias rm='trash'
else
    alias rm='rm -i'
fi

# BSD date doesn't have iso8601 output. This simulates that. If I was smart I'd
# use gdate -I.
alias idate='date -u +"%Y-%m-%dT%H:%M:%SZ"'

# Just some useful shorcuts
alias gg='git grep' # limit grep to files under version control.
alias vi='vim'
alias v='vim'
alias t='tmux'
alias mux='tmuxinator'

# Starship is the least worst prompt I've seen.
if type "starship" > /dev/null
then
    eval "$(starship init zsh)"
fi