"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Description:
"   This is the .vimrc file
"
" Maintainer:
"   EAR Patrick "MonPote"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim options
set nocompatible
filetype off

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Vundle Plugin
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle bundle
Plugin 'gmarik/Vundle.vim'

" Add a status cool status bar
Plugin 'bling/vim-airline'

" Color the parentheses
Bundle 'kien/rainbow_parentheses.vim'

" Correct your syntax when you are saving
Bundle 'Syntastic'
"need the bundle https://github.com/vim-scripts/UltiSnips

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" To install the Bundle :BundleInstall in vim
" To install the Plugin :PluginInstall in vim
call vundle#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Plugin end
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim_airline config
set laststatus=2 " force the status bar when there is only one buffer


syn on
syntax enable
filetype plugin indent on

" vim options
set number
set encoding=utf-8
set showcmd

set scrolloff=5
set cursorline
set textwidth=79
set colorcolumn=80

if version >=703
    set colorcolumn =+1
endif


" coding style

set expandtab "remplace les tabulations par des espaces
set tabstop=8 "taille d'une tabulation (8 par default)
set softtabstop=4 "nombre d'espace lors d'un appuie tab
set shiftwidth=4 "niveau d'intentation
"autocmd BufWritePre * :%s/\s\+$//
match Todo /\s\+$/



au VimEnter * RainbowParenthesesToggleAll
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
