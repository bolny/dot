#! /bin/zsh
# shellcheck shell=bash

export EDITOR=vi

PATH="/opt/homebrew/bin:${PATH}"
PATH="/opt/homebrew/sbin:${PATH}"
PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"
PATH="${HOME}/.emacs.d/bin:${PATH}"

export PATH
