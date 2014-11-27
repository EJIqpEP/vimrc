" Pathogen
call pathogen#infect()

" -------- Colors -----------
" Enable syntax processing
syntax enable

" Awesome colorscheme
set background=dark
colorscheme solarized


" --------- Spaces & Tabs --------

" Number of visual spaces per TAB
set tabstop=4

" Number of spaces in tab when editing
set softtabstop=4

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
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1



" CtrlP
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" Syntastic
let g:syntastic_enable_signs=1


" Fonts
set guifont=Monaco:h12

" --------------- Backups --------------
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
