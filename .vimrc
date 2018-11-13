set nocompatible
call plug#begin('~/.vim/plugged')	

Plug 'bling/vim-airline'
Plug 'pbrisbin/vim-mkdir'

call plug#end()
runtime! config/**/*.vim
