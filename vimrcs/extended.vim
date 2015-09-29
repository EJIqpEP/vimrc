"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => GUI related

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set font according to system

if has("mac") || has("macunix")

    set gfn=Source\ Code\ Pro:h15,Menlo:h15

elseif has("win16") || has("win32")

    set gfn=Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11

elseif has("linux")

    set gfn=Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11

elseif has("unix")

    set gfn=Monospace\ 11

endif



" Open MacVim in fullscreen mode

if has("gui_macvim")

    set fuoptions=maxvert,maxhorz

    au GUIEnter * set fullscreen

endif



" Disable scrollbars (real hackers don't use scrollbars for navigation!)

set guioptions-=r

set guioptions-=R

set guioptions-=l

set guioptions-=L



" Colorscheme

if has("gui_running")

    set background=dark

    colorscheme base16-default

else

    colorscheme desert

    let g:colors_name="desert"

endif

