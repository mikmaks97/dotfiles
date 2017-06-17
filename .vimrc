syntax enable
set number
set backspace=indent,eol,start
set history=1000
set showcmd
set showmode
set visualbell

set background=dark
colorscheme solarized
highlight Normal ctermbg=NONE
highlight Nontext ctermbg=NONE

set autoindent
set smartindent
set smarttab
set tabstop=4
set softtabstop=4
set expandtab

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
