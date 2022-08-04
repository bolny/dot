#! /bin/bash

PATH="${HOME}/.bin:${PATH}"
PATH="${HOME}/.local/bin:${PATH}"

export PATH

[ -f ~/.profile.local ] && source ~/.profile.local
