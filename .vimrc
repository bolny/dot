set nocompatible

set autoindent
set autowrite
set number
set ruler
set showmode
set tabstop=2

set background=dark
set shiftwidth=2
set softtabstop=2
set smartindent
set smarttab
set expandtab
set nowrap

set foldmethod=manual

syntax enable
filetype plugin on

let mapleader=","

if filereadable(expand("~/.vim/autoload/plug.vim"))
  call plug#begin()

  Plug 'tpope/vim-surround'
  Plug 'editorconfig/editorconfig-vim'
  "Plug 'airblade/vim-gitgutter'
  Plug 'michaeljsmith/vim-indent-object'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-pandoc/vim-pandoc'

  call plug#end()
endif

