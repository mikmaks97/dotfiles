set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/nerdcommenter'  "\cc or c<SPACE> to comment
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'

call vundle#end()

set clipboard=unnamed
syntax enable
set number
set mouse=a
set backspace=indent,eol,start  "make vim backpsace the right character
set history=1000
set showcmd
set showmode
set visualbell
set colorcolumn=80  "highlight the 80th column with red

set background=dark
colorscheme solarized
set laststatus=2  "show lightline even when one pane is open

filetype plugin indent on
set smartindent
set smarttab
set autoindent
set expandtab

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWritePre * %s/\s\+$//e   "autodelete trailing whitespace

set lazyredraw
set showmatch

set incsearch
set hlsearch

set foldenable
set foldnestmax=10
set foldmethod=indent

nnoremap <Down> gj
nnoremap <Up> gk
nmap <silent> <F3> :NERDTreeToggle<CR>

augroup AutoSaveFolds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent loadview
augroup END
