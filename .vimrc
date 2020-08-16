set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/nerdcommenter'  "\cc or c<SPACE> to comment
Plugin 'scrooloose/nerdtree'
Plugin 'yuezk/vim-js'  " recommended by vim-jsx-pretty
Plugin 'HerringtonDarkholme/yats.vim'  " recommended by vim-jsx-pretty
Plugin 'MaxMEllon/vim-jsx-pretty'

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


autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
" dark red
hi tsxTagName guifg=#E06C75

" orange
hi tsxCloseString guifg=#F99575
hi tsxCloseTag guifg=#F99575
hi tsxCloseTagName guifg=#F99575
hi tsxAttributeBraces guifg=#F99575
hi tsxEqual guifg=#F99575

" yellow
hi tsxAttrib guifg=#F8BD7F cterm=italic
" light-grey
hi tsxTypeBraces guifg=#999999
" dark-grey
hi tsxTypes guifg=#666666
