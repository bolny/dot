#! /bin/sh

if [ -f ~/.vim/autoload/plug.vim ]; then
	echo "### vim-plug detected. Skipping install. ###"
else
	echo "### Installing vim-plug ###"
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
