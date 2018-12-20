set nocompatible
call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'pbrisbin/vim-mkdir'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'tpope/vim-commentary'
Plug 'suy/vim-context-commentstring'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'janko-m/vim-test', { 'on': ['TestFile', 'TestNearest', 'TestLast', 'TestSuite'] }
Plug 'AndrewRadev/splitjoin.vim'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'mileszs/ack.vim'
Plug 'AndrewRadev/switch.vim'
Plug 'lifepillar/vim-mucomplete'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-eunuch'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

runtime! config/**/*.vim
