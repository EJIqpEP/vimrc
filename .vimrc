" Alexander Kochergin
"
" Vundle call {{{
set nocompatible
filetype off

set rtp+=~/vimfiles/bundle/Vundle.vim/

if has("gui_running")
  if has("gui_macvim")
    call vundle#begin()
  elseif has("gui_win32")
    let path='~/vimfiles/bundle'
    call vundle#begin(path)
  endif
endif


filetype plugin indent on
filetype indent on

" Plugins bundle
" Theme
Plugin 'altercation/vim-colors-solarized'

" NerdTree
Plugin 'scrooloose/nerdtree'

" NerdTree tabs
Plugin 'jistr/vim-nerdtree-tabs'

" Errors highlighting
" Doesn't work on windows
Plugin 'scrooloose/syntastic'

" File finder
Plugin 'kien/ctrlp.vim'

" Javascript syntax
Plugin 'pangloss/vim-javascript'

" Auto pairs
Plugin 'jiangmiao/auto-pairs'

" Vim jsx
Plugin 'mxw/vim-jsx'

" Nerdcommenter
Plugin 'scrooloose/nerdcommenter'

" Vim-indent-object (detects correct indent)
Plugin 'michaeljsmith/vim-indent-object'

" Vim indent guides
Plugin 'Yggdroot/indentLine'

"vim-trailing-whitespace (show trailing whitespace in red)
Plugin 'ntpeters/vim-better-whitespace'

" jsdocs comments
Plugin 'heavenshell/vim-jsdoc'

" Spartup (emmet)
" Fix: doesn't work
"Plugin 'rstacruz/sparkup'

" Supertab (autocomplete on tab)
Plugin 'ervandew/supertab'

" Javascript libraries syntax
Plugin 'othree/javascript-libraries-syntax.vim'

" Tern for vim (autocomplete)
"Plugin 'marijnh/tern_for_vim'

" Editors config
Plugin 'editorconfig/editorconfig-vim'

" Colorschemes for vim
Plugin 'flazz/vim-colorschemes'

" Match html tag
Plugin 'gregsexton/MatchTag'

" Emmet vim
Plugin 'mattn/emmet-vim'

" Ask (search text in files)
Plugin 'mileszs/ack.vim'

" Airline (statusbar)
Plugin 'bling/vim-airline'

call vundle#end()

" }}}

" Colors {{{
" Enable syntax processing
syntax enable

" Awesome colorscheme
set background=dark
colorscheme solarized

" }}}


" Spaces & Tabs {{{

" Number of visual spaces per TAB
set tabstop=2

" Number of spaces in tab when editing
set softtabstop=2

" Dunno
set shiftwidth=2

" Dunno
set modelines=1

" Turn tabs into spaces
set expandtab

" Backspace config
set backspace=indent,eol,start

" }}}

" UI Config {{{

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

" Remove bars
set guioptions -=m
set guioptions -=T

" Maximize window size
if has("gui_running")
  set lines=999 columns=999
endif

" }}}

" Searching {{{

" Ignorecase
set ignorecase

" Search as characters are entered
set incsearch

" Highlight matches
set hlsearch

" }}}

" Folding {{{

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

" }}}

" Movement {{{

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

" }}}

" Keybindings {{{
" Add ctrl+s functionality
if has("gui_running")
  if has("gui_win32")
	noremap <silent> <C-S>          :update<CR>
	vnoremap <silent> <C-S>         <C-C>:update<CR>
	inoremap <silent> <C-S>         <C-O>:update<CR>
  endif
endif

" Keybinds for tabbing block in visual mode
vmap <Tab> >gv
vmap <S-Tab> <gv

" Open vimrc file
nmap <leader>v :tabedit $MYVIMRC<CR>

" }}}
"

" Plugins {{{

" NERDTree
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.\.$', '\.$', '\~$']

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
let g:syntastic_error_symbol = 'x'
let g:syntastic_warning_symbol = '!'

" --Vim-jsx--

" Enable jsx for js files
let g:jsx_ext_required = 0

" Vim better whitespace
let g:strip_whitespace_on_save = 1

" Jsdocs
let g:jsdoc_return = 0

" Javascript libraries syntax
autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1
autocmd BufReadPre *.js let b:javascript_lib_use_react = 1
autocmd BufReadPre *.js let b:javascript_lib_use_flux = 1

" Emmet-vim
let g:user_emmet_leader_key='<C-e>'

" Airline
" Use powerline fonts
let g:airline_powerline_fonts = 1
" Show all buffers
let g:airline#extensions#tabline#enabled = 1

" }}}

" Fonts {{{
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Monaco:h12
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" }}}


" Backups {{{
if has("gui_running")
  if has("gui_macvim")
	set backup
	set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
	set backupskip=/tmp/*,/private/tmp/*
	set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
	set writebackup
  elseif has("gui_win32")
	set backupdir=C:\\VimTemp
  endif
endif

" Autoread
set autoread

" Save on losing focus
autocmd BufLeave,FocusLost * silent! wall

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" }}}

" vim:foldmethod=marker:foldlevel=0
