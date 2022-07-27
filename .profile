#! /bin/bash

PATH="/usr/local/bin:${PATH}"
PATH="/usr/local/sbin:${PATH}"
PATH="/opt/homebrew/bin:${PATH}"
PATH="/opt/homebrew/sbin:${PATH}"
PATH="${HOME}/.bin:${PATH}"

export PATH

[ -f .profile.local ] && source .profile.local
