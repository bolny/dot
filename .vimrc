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
set nofixendofline
set backupcopy=yes

set foldmethod=manual
set nofoldenable
set clipboard=unnamed

syntax enable
filetype plugin on

let mapleader=","

au filetype sh set makeprg=shellcheck\ -f\ gcc\ %

if filereadable(expand("~/.vim/autoload/plug.vim"))
  call plug#begin()

  Plug 'tpope/vim-surround'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'michaeljsmith/vim-indent-object'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-pandoc/vim-pandoc'
  Plug 'vim-pandoc/vim-pandoc-syntax'

  call plug#end()
endif


