set nocompatible

set autoindent
set autowrite
set number
set ruler
set showmode

set backupcopy=yes

syntax enable
set background=dark

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nowrap
set nofixendofline

filetype plugin on
set smartindent
set smarttab
set foldmethod=manual
set clipboard=unnamed

if filereadable(expand("~/.vim/autoload/plug.vim"))
  call plug#begin()

  Plug 'editorconfig/editorconfig-vim'
  Plug 'tpope/vim-surround'
  Plug 'michaeljsmith/vim-indent-object'

  call plug#end()
endif
