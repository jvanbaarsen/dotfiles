set nocompatible
call plug#begin('~/.vim/plugged')

Plug 'pbrisbin/vim-mkdir'
Plug 'sheerun/vim-polyglot'
Plug 'pantharshit00/vim-prisma'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-commentary'
Plug 'suy/vim-context-commentstring'
Plug 'janko-m/vim-test', { 'on': ['TestFile', 'TestNearest', 'TestLast', 'TestSuite'] }
Plug 'AndrewRadev/splitjoin.vim'
Plug 'airblade/vim-gitgutter'
Plug 'mileszs/ack.vim'
Plug 'AndrewRadev/switch.vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-dispatch'
" Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-rhubarb'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-dirvish'
Plug 'jparise/vim-graphql'
Plug 'neoclide/coc.nvim'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
Plug 'KurtPreston/vim-autoformat-rails'
Plug 'mattn/webapi-vim'
Plug 'mattn/vim-gist'
Plug 'github/copilot.vim', { 'branch': 'release'}
" disable auto matching parens
let g:loaded_matchparen=1
" don't render special chars (tabs, trails, ...)
set nolist
" if number column doesn't make sense to you, just don't render it
set nonumber
" lazy drawing
set lazyredraw
set ttyfast

call plug#end()

" Plug 'vim-airline/vim-airline-themes'
runtime! config/**/*.vim
