""""""""""""""""""""""""""""""

" => Load pathogen paths

""""""""""""""""""""""""""""""

call pathogen#infect('~/.vim_runtime/sources/{}')

call pathogen#helptags()



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Nerd Tree

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let NERDTreeShowHidden=0

let NERDTreeIgnore = ['\.pyc$', '__pycache__']

let g:NERDTreeWinSize=35

map <leader>nn :NERDTreeToggle<cr>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Syntastic (syntax checker)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:syntastic_javascript_checkers = ['eslint']



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

