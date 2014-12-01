" ---------Vundle call-----------
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/

call vundle#rc()

filetype plugin indent on

" Plugins bundle
" Theme
Bundle 'altercation/vim-colors-solarized'

" NerdTree
Bundle 'scrooloose/nerdtree'

" NerdTree tabs
Bundle 'jistr/vim-nerdtree-tabs'

" Errors highlighting
Bundle 'scrooloose/syntastic'

" File finder
Bundle 'kien/ctrlp.vim'

" YouCompleteMe
Bundle 'Valloric/YouCompleteMe'

" Javascript syntax
Bundle "pangloss/vim-javascript"

" Auto pairs
Bundle "jiangmiao/auto-pairs"

" Vim jsx
Bundle "mxw/vim-jsx"

" Nerdcommenter
Bundle "scrooloose/nerdcommenter"

" -------- Colors -----------
" Enable syntax processing
syntax enable

" Awesome colorscheme
set background=dark
colorscheme solarized


" --------- Spaces & Tabs --------

" Number of visual spaces per TAB
set tabstop=2

" Number of spaces in tab when editing
set softtabstop=2

" Dunno
set shiftwidth=2

" Turn tabs into spaces
set expandtab

" --------- UI Config -------------

" Show line numbers
set number

" Show command in bottom bar
set showcmd

" Highlight current line
set cursorline

" Load filetype-specific indent files
filetype indent on

" Visual autocomplete for command menu
set wildmenu

" Redraw only when we need to
set lazyredraw

" Highlight brackets matchings
set showmatch

" Remove swap warnings
set shortmess+=A

" Set noswap files
set noswapfile

" Enable coping between apps
set clipboard=unnamed

" Set encoding
set enc=utf-8

" Change the leader key
let mapleader=","

" --------- Searching --------------

" Search as characters are entered
set incsearch

" Highlight matches
set hlsearch

" -------- Folding -----------------

" Enable folding
set foldenable

" Open most folds by default
set foldlevelstart=10

" 10 nested fold max
set foldnestmax=10

" space open/closes folds
nnoremap <space> za

" Fold based on indent level
set foldmethod=indent

" ----------- Movement -------------

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

" ------------ Plugins -------------

" NERDTree
let NERDTreeShowHidden=1


" CtrlP
" How it will find root file
let g:ctrlp_working_path_mode = 'ra'

" Ignore unnecessary search
let g:ctrlp_custom_ignore = '\v[\/](node_modules|bower_components|target|dist)|(\.(swp|ico|git|svn))$'

" Keybindings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


" --Syntastic--

" Check of errors is on
let g:syntastic_enable_signs=1

" Automatically load errors in location list
let g:syntastic_always_populate_loc_list = 1

" Check errors on file open
let g:syntastic_check_on_open = 1

let g:syntastic_mode_map = { 'mode': 'active',
    \ 'active_filetypes': [],
    \ 'passive_filetypes': ['html'] }

" Add jshint as JS spellcheker
let g:syntastic_javascript_checkers = ['jshint']

" Better :sign interface symbols
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'

" --Vim-jsx--

" Enable jsx for js files
let g:jsx_ext_required = 0


" Fonts
set guifont=Monaco:h12

" --------------- Backups --------------
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" Autoread
set autoread
