.PHONY: all packages

default: all

all: packages ~/.gitconfig ~/.gitignore_global

packages:
	brew bundle --file Brewfile

~/.gitconfig: gitconfig
	cp -f gitconfig ~/.gitconfig

~/.gitignore_global: gitignore_global
	cp -f gitignore_global ~/.gitignore_global
