.PHONY: all \
	packages \
	install_tmux_terminfo \
	install_vim_plug

default: all

all: packages \
	install_tmux_terminfo \
	install_vim_plug \
	~/.config/tmux/tmux.conf.local \
	~/.zshrc.local \
	~/.zprofile.local \
	~/.vimrc.local \
	~/.vim/colors/flatwhite.vim

packages:
	brew bundle --file Brewfile

install_tmux_terminfo: tmux.terminfo install_tmux_terminfo.sh
	sh ./install_tmux_terminfo.sh

~/.config/tmux/tmux.conf.local: tmux.conf
	cp -f tmux.conf ~/.config/tmux/tmux.conf.local

~/.zshrc.local: init.zsh
	cp -r init.zsh ~/.zshrc.local

~/.zprofile.local: profile.zsh
	cp -r profile.zsh ~/.zprofile.local

install_vim_plug:
	sh ./install_vim_plug.sh

~/.vimrc.local: init.vim
	cp -r init.vim ~/.vimrc.local

~/.vim/colors/flatwhite.vim: flatwhite.vim
	mkdir -p ~/.vim/colors
	cp -r flatwhite.vim ~/.vim/colors/flatwhite.vim
