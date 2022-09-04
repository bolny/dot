#!/bin/sh

if ! infocmp tmux >/dev/null; then
	echo "### Installing tmux terminfo  ###"
	tic -x "${PWD}/machines/goodsprings/tmux.terminfo"
else
	echo "### Tmux terminfo found. Skipping install ###"
fi
