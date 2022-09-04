#! /bin/sh

scripturl="https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh"

if ! command -v brew >/dev/null; then
	echo "### Installing Homebrew ###"
	/bin/bash -c "$(curl -fsSL ${scripturl})"
else
	echo "### Brew detected, skipping install ###"
fi
