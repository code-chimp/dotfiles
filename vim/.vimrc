" Plugins: Pathogen, NERDTree, nerdcommenter, Sparkup, YankRing
" General
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on
set nocompatible
set autochdir
set modelines=0
set nobackup
set clipboard+=unnamed
set hidden
set mouse=a
set noerrorbells " don't speak
set novisualbell " don't blink
set vb t_vb=     " not even for a second
set autowriteall
set whichwrap=b,s,<,>,~
 "            | | | | | 
 "            | | | | | 
 "            | | | | | 
 "            | | | | +-- "~" Normal
 "            | | | +-- <Right> Normal and Visual
 "            | | +-- <Left> Normal and Visual
 "            | +-- <Space> Normal and Visual
 "            +-- <BS> Normal and Visual
set cpoptions=aABceFsmq
 "            |||||||||
 "            ||||||||+-- When joining lines, leave the cursor
 "            |||||||      between joined lines
 "            |||||||+-- When a new match is created (showmatch)
 "            ||||||      pause for .5
 "            ||||||+-- Set buffer options when entering the
 "            |||||      buffer
 "            |||||+-- :write command updates current file name
 "            ||||+-- Automatically add <CR> to the last line
 "            |||      when using :@r
 "            |||+-- Searching continues at the end of the match
 "            ||      at the cursor position
 "            ||+-- A backslash has no special meaning in mappings
 "            |+-- :write updates alternative file name

" formatting
set encoding=utf-8
set tabstop=4 
set shiftwidth=4 
set softtabstop=4 
set expandtab 
set smarttab
set shiftround 
set nowrap 
set autoindent
set smartindent

set scrolloff=3 
set showmode
set showcmd 
set backspace=indent,eol,start 
set wildmenu 
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png
set wildmode=list:longest 

" ui settings
set guifont=consolas:h9
colorscheme molokai
set laststatus=2     " always show the status line
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
 "             | | | | |  |   |      |  |     |    |
 "             | | | | |  |   |      |  |     |    + current column
 "             | | | | |  |   |      |  |     +-- current line
 "             | | | | |  |   |      |  +-- current % into file
 "             | | | | |  |   |      +-- current syntax in square brackets
 "             | | | | |  |   +-- current fileformat
 "             | | | | |  +-- number of lines
 "             | | | | +-- preview flag in square brackets
 "             | | | +-- help flag in square brackets
 "             | | +-- readonly flag in square brackets
 "             | +-- rodified flag in square brackets
 "             +-- full path to file in the buffer
set lazyredraw       " do not redraw while running macros
set linespace=0 
set list 
set listchars=tab:>-,trail:- 
set nostartofline    " leave my cursor where it was
set number           " turn on line numbers
set numberwidth=4    " We are good up to 9999 lines
set report=0         " tell us when anything is changed via :...
set ruler            " Always show current positions along the bottom
set shortmess=aOstT 
set sidescrolloff=10 " Keep 5 lines at the size
syntax on
let mapleader = ","

" searching/moving
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase 
set gdefault    " always use global replace
set showmatch   " show matching brackets
set matchtime=5 " tenths of a second to blink
set hlsearch    " highlighted search
set incsearch   " BUT do highlight as you type searchterm
nnoremap <leader><space> :noh<CR> " '\ ' turns off highlighting

" Folding 
set foldenable        " Turn on folding
set foldmarker={,}    " Fold C style code (only use this as default if you use a high foldlevel)
set foldmethod=marker " Fold on the marker
set foldlevel=100     " Don't autofold anything (but I can still fold manually)
"set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds

" convenience
inoremap <F1> <ESC> " mitigate missing mode key
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
map <F2> :NERDTreeToggle<CR>
nnoremap <silent> <F3> :YRShow<CR>
inoremap <silent> <F3> <ESC>:YRShow<CR>
inoremap jj <ESC>
" disable arrow keys
"nnoremap <up> <nop>
"nnoremap <down> <nop> 
"nnoremap <left> <nop> 
"nnoremap <right> <nop> 
"inoremap <up> <nop>
"inoremap <down> <nop> 
"inoremap <left> <nop> 
"inoremap <right> <nop> 
"trim all trailing whitespace
nnoremap <leader>W :%s/\s\+$//<CR>:let @/=''<CR>
"css sort
nnoremap <leader>S ?{<CR>jV/^\s*\}$<CR>k:sort<CR>:noh<CR>
"fold tag
nnoremap <leader>ft Vatzf
"make split windows saner
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 7.3
set relativenumber
set undofile
set undodir=/tmp

" Custom 
 " Enable a nice big viminfo file
set viminfo='500,f1,:500,/500
set history=200

set background=light
set background=dark