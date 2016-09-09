" General
set nocompatible

" vim-plug Plug Manager
call plug#begin('~/.vim/plugged')

" themes
Plug 'zenburn'
Plug 'molokai'

" general
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'

" autocomplete
Plug 'ervandew/supertab'
Plug 'Valloric/YouCompleteMe', {'do': './install.py --tern-completer --omnisharp-completer'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" JavaScript
Plug 'pangloss/vim-javascript', {'for': ['javascript', 'javascript.jsx']}
Plug 'mxw/vim-jsx', {'for': ['javascript', 'javascript.jsx']}
Plug 'isRuslan/vim-es6', {'for': ['javascript', 'javascript.jsx']}
Plug 'othree/javascript-libraries-syntax.vim', {'for': ['javascript', 'javascript.jsx']}
Plug 'leafgarland/typescript-vim', {'for': ['typescript']}

" tools
Plug 'flowtype/vim-flow', {'for': ['javascript', 'javascript.jsx']}
Plug 'scrooloose/syntastic'

" parens in the hizouse
Plug 'kien/rainbow_parentheses.vim'
Plug 'wlangstroth/vim-racket'

" just plain handy to have around
Plug 'Markdown'
Plug 'elentok/plaintasks.vim'
Plug 'less.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'mattn/emmet-vim'
Plug 'rgrinberg/vim-ocaml'
Plug 'ocaml.annot.pl'
Plug 'fatih/vim-go'
Plug 'Pydiction'
Plug 'fsharp/vim-fsharp'
Plug 'bling/vim-airline'

" load last to take precedence
Plug 'editorconfig-vim'

call plug#end()

set t_Co=256

let g:airline_powerline_fonts = 1

" make lispy things pretty
let g:rbpt_colorpairs = [
    \ ['magenta', 'purple1'],
    \ ['cyan', 'magenta1'],
    \ ['green', 'slateblue1'],
    \ ['yellow', 'cyan1'],
    \ ['red', 'springgreen1'],
    \ ['magenta', 'green1'],
    \ ['cyan', 'greenyellow'],
    \ ['green', 'yellow1'],
    \ ['yellow', 'orange1'],
    \ ]
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesisLoadRound
au BufNewFile,BufRead *.rkts set filetype=racket

" vim-jsx
let g:jsx_ext_required = 0

" vim-flow
let g:flow#enable = 1
let g:flow#autoclose = 1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_jump = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['standard']

" ycm / ultisnips / supertab
let g:ycm_key_list_select_completion=['\<C-TAB>', '\<DOWN>']
let g:ycm_key_list_previous_completion=['\<C-S-TAB>', '\<UP>']
let g:SuperTabDefaultCompletionType='\<C-TAB>'

" typescript
let g:typescript_compiler_options = '-sourcemap'
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" Pydiction
let g:pydiction_location = '~/.vim/plugged/Pydiction/complete-dict'
let g:pydiction_menu_height = 4

" ocaml merlin
if executable('ocamlmerlin') && has('python')
    let s:ocamlmerlin = substitute(system('opam config var share'), '\n$', '', '''') . "/ocamlerlin"
    execute "set rtp+=".s:ocamlmerlin."/vim"
    execute "set rtp+=".s:ocamlmerlin."/vimbufsync"
endif

let g:syntastic_ocaml_checkers = ['merlin']

" ocp-indent
autocmd FileType ocaml source substitute(system('opam config var share'), '\n$', '', '''') . "/typerex/ocp-indent/ocp-indent.vim"

" on with the show
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
set guifont=Ubuntu\ Mono\ 12
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
nnoremap <C-p> :FZF<CR>
inoremap <C-p> <ESC>:FZF<CR>i
" disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
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

"gui defaults and display control
" menu, toolbar, and right-scroll off by default
set guioptions-=m
set guioptions-=T
set guioptions-=r
nnoremap <C-m> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <C-t> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
nnoremap <C-r> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>

" 7.3
set relativenumber
set undofile
set undodir=/tmp

" Custom
 " Enable a nice big viminfo file
set viminfo='500,f1,:500,/500
set history=200

