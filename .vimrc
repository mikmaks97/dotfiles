set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim'

call vundle#end()

syntax enable
set number
set backspace=indent,eol,start
set history=1000
set showcmd
set showmode
set visualbell

set background=dark
colorscheme solarized

filetype plugin indent on
set smartindent
set smarttab
set autoindent

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

set lazyredraw
set showmatch

set incsearch
set hlsearch

set foldenable
set foldnestmax=10
set foldmethod=indent

nnoremap j gj
nnoremap k gk
