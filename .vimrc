""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VUNDLE STUFF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " Required by vundle
filetype off     " Required by vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Vundle
Plugin 'VundleVim/Vundle.vim'

" Tpope plugins
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-commentary'
" Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-tbone'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-dispatch'

" Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" Misc plugins
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdtree'
Plugin 'kchmck/vim-coffee-script'
Plugin 'ngmy/vim-rubocop'
Plugin 'plasticboy/vim-markdown'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'christoomey/vim-run-interactive'
Plugin 'pbrisbin/vim-mkdir'

" Vim 2 Gist
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'

" Go plugins
Plugin 'fatih/vim-go'

" EmberJS stuff
Plugin 'dsawardekar/ember.vim'
Plugin 'mustache/vim-mustache-handlebars'

" Color Scheme
Plugin 'chriskempson/base16-vim'
Plugin 'endel/vim-github-colorscheme'
Plugin 'nanotech/jellybeans.vim'
Plugin 'jeffkreeftmeijer/vim-dim'

" Disable arrow keys and count the mis-use of it :-)
Plugin 'mrmargolis/dogmatic.vim'

" Javascript support
Plugin 'pangloss/vim-javascript'

" Reek - Ruby smell detection
Plugin 'rainerborene/vim-reek'

" vim-ruby-refactoing
Plugin 'ecomba/vim-ruby-refactoring'

" Git Gutter - Show git status in the gutter
Plugin 'airblade/vim-gitgutter'

" " Slim syntax highlighting
Plugin 'slim-template/vim-slim.git'

" Dash search
Plugin 'rizzatti/dash.vim'

" notes
Plugin 'jodosha/vim-devnotes'

" Test runners
Plugin 'janko-m/vim-test'
Plugin 'skywind3000/asyncrun.vim'

" Git Commit plugin
Plugin 'rhysd/committia.vim'

" Syntax highlighting for Vue.js
Plugin 'posva/vim-vue'

" Wordmotion
Plugin 'chaoren/vim-wordmotion'

" Vim Dockersupport
Plugin 'ekalinin/Dockerfile.vim'

" Elixir support
Plugin 'elixir-editors/vim-elixir'
Plugin 'slashmili/alchemist.vim'
Plugin 'mhinz/vim-mix-format'

" Ruby run support
Plugin 'stjernstrom/vim-ruby-run'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

runtime macros/matchit.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrl-P Stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<Leader>m'
let g:ctrlp_cmd = 'CtrlP'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
nmap <space> ,
nmap <silent> <leader>d <Plug>DashSearch
vmap <C-c> "+y
" map <C-t> :tabe<cr>
map <Leader>r :NERDTreeToggle<CR>
map <Leader>gs :Gstatus<CR>
map <Leader>gc :Gcommit<CR>
map <Leader>gac :Gcommit -a<CR>
map <Leader>gw :!rake && rubocop && git add . && git commit -m 'WIP' && git push origin $(git rev-parse --abbrev-ref HEAD)<cr>
map <Leader>nn :sp ~/Dropbox/notes/notes.txt<CR>
map <Leader>pnn :sp ~/Dropbox/notes/private-notes.txt<CR>
map <Leader>todo :sp ~/Dropbox/notes/todo.txt<CR>
map <Leader>ptodo :sp ~/Dropbox/notes/private-todo.txt<CR>
map <Leader>ll <esc>i=============================================<cr><esc>
map <Leader>reload :source $MYVIMRC<CR>
map <Leader>sn :sp ~/.vim/bundle/vim-snippets/snippets<CR>
map <leader>h :nohl<cr>
map <silent><leader>b :noh<cr>
" map <leader>l :w<cr>:call RunCurrentLineInTest()<CR>
map <leader>L :VtrKillRunner<cr>
map <leader>z :VtrFocusRunner<cr>
map <Leader>c :copen<cr>
map <Leader>vc :Vcontroller
map <Leader>ec :Econtroller
map <Leader>vm :Vmodel
map <Leader>em :Emodel
map <Leader>ex :Rextract
map <leader>irb :VtrOpenRunner {'orientation': 'h', 'percentage': 50, 'cmd': 'irb'}<cr>
map <leader>R :VtrOpenRunner {'orientation': 'h', 'percentage': 50, 'cmd': 'rails console'}<cr>
map <Leader>q :ccl<cr><cr>
map <Leader>u :!rake db:migrate && rake db:migrate RAILS_ENV=test<cr>
map <Leader>d :!rake db:rollback && rake db:rollback RAILS_ENV=test<cr>
nmap <silent> <leader>k :TestNearest<CR>
nmap <silent> <leader>K :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
nnoremap <leader>wtf oputs "#" * 90<c-m>puts caller<c-m>puts "#" * 90<esc>
map <Leader>css :!rake scss_lint<cr>

" Go Specific mappings:
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <leader>w <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

let g:go_fmt_command = "goimports"

" Test runner stuff
let test#strategy = "basic"
" let test#strategy = "dispatch"
autocmd FileType qf setlocal wrap linebreak

command! Q q  " Allow quiting with :Q and :q

" Vim TMux Runner config
let g:VtrClearBeforeSend = 1
let g:VtrOrientation = "h"
let g:VtrPercentage = 20

" Vim Gist settings
let g:gist_post_private = 1
let g:gist_clip_command = 'pbcopy'

" Disable autofolding for vim-markdown
let g:vim_markdown_folding_disabled=1

" let g:vimrubocop_config = '~/.rubocop.yml'

" Reek config
let g:reek_always_show = 0
let g:reek_on_loading = 0

" Netrw stuff
let g:netrw_liststyle=3


let g:mix_format_on_save = 1 " Enable Elixir auto format

" Decide what colorscheme to use
if $USE_DARK_THEME
  let g:use_light_colors = 0
else
  let g:use_light_colors = 1
endif

let g:NERDTreeHijackNetrw = 0
let g:NERDTreeMinimalUI = 1
let NERDTreeDirArrows=0
let NERDTreeShowLineNumbers=1

" Fix mouse click on right side of screen
if has('mouse_sgr')
     set ttymouse=sgr
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTAGS RELATED STUFF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Exclude Javascript files in :Rtags via rails.vim due to warnings when parsing
let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"
" Index ctags from any project, including those outside Rails
map <Leader>ct :!ctags -R .<CR>
map <Leader>rt :!ctags --tag-relative --extra=+f -Rf.git/tags --exclude=.git,pkg --languages=-javascript,sql<cr><cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPS TO JUMP TO SPECIFIC FILES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>gr :topleft :split config/routes.rb<cr>
function! ShowRoutes()
  " Requires 'scratch' plugin
  :topleft 100 :split __Routes__
  " Make sure Vim doesn't write __Routes__ as a file
  :set buftype=nofile
  " Delete everything
  :normal 1GdG
  " Put routes output in buffer
  :0r! rake routes
  " Size window to number of lines (1 plus rake output length)
  :exec ":normal " . line("$") . _ "
  " Move cursor to bottom
  :normal 1GG
  " Delete empty trailing line
  :normal dd
endfunction
map <leader>gR :call ShowRoutes()<cr>
map <leader>gg :topleft 100 :split Gemfile<cr>
map <leader>gS :topleft 100 :split db/schema.rb<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISC SETS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on
filetype plugin indent on
hi Search guibg=darkgrey ctermbg=darkgrey
set nocursorline
set visualbell
set noerrorbells
set smartcase
set ignorecase
set mouse=a
set clipboard=unnamed
set hidden
set nocompatible
set history=50
set ruler
set showcmd
set autoindent
set showmatch
set nowrap
set backupdir=~/.tmp
set directory=~/.tmp
set autoread
set guifont=Monaco:h12
set smarttab
set relativenumber
set number
set sw=2
set sts=2
set tabstop=2
set expandtab
set laststatus=2
set nofoldenable " No code folding :-)
" set tags=./tags;
set tags+=.git/tags
set wildignore+=*.jpg,*.psd,*.gif,tmp/**,*.png,Export/**
set wildignore+=tags,Assets/images/**,Assets/sounds/**,build/**,.sass-cache/**
set hlsearch
set autowrite
set ttyfast
set synmaxcol=128

if !has('nvim')
  set ttyscroll=3
end

set lazyredraw
set wrap
set textwidth=80
set colorcolumn=+1
set noswapfile
" set formatoptions=l

" Get rid of the freaking Ex mode
map Q <Nop>

" Get rid of the super annoying - key =/
map - <Nop>

" Also use capital W for saving..
command! W w

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Run commands that require an interactive shell
nnoremap <Leader>e :RunInInteractiveShell<space>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Show the netrw banner always
let g:netrw_banner=1

" Remove trailing whitespace on save for ruby files.
au BufWritePre *.rb :%s/\s\+$//e
" Show trailing spaced on line
set list listchars=tab:»·,trail:·

" Set Colorscheme
if g:use_light_colors
  colorscheme github256
else
  set bg=dark
  let base16colorspace=256
  " colorscheme base16-railscasts
  colorscheme base16-spacemacs
endif
" colorscheme dim

" Mustache stuff
let g:mustache_abbreviations = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CURSOR STUFF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LANGUAGE SPECIFIC STUFF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " Dont show tabs and trailing spaces for Go
  autocmd FileType go setlocal nolist
  autocmd BufRead,BufNewFile *.es6 setfiletype javascript

augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" STATUSLINE STUFF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
set statusline=\ "
set statusline+=%f\ " file name
set statusline+=[
set statusline+=%{strlen(&ft)?&ft:'none'} " filetype
set statusline+=]
set statusline+=%h%1*%m%r%w%0* " flag
set statusline+=%= " right align
" set statusline+=%{devnotes#statusline()}
set statusline+=%{fugitive#statusline()}
set statusline+=%-14.(%l,%c%V%)\ %<%P " offset

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FUNCTIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RENAME CURRENT FILE
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    exec ':saveas '. new_name
    exec ':silent !rm '. old_name
    redraw!
  endif
endfunction
map <Leader>n :call RenameFile()<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AUTOCOMMAND STUFF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
  au VimLeave * VtrKillRunner
  augroup vimrcEx
    au!
    autocmd BufReadPost *
        \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif
  augroup END
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SEARCH REPLACER
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --hidden --ignore .git -g ""'
  let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$\|node_modules/'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endi

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CHANGE HASH ROCKET TO NEW RUBY STYLE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap _hr :%s/\v:(\w+) \=\>/\1:/g<cr>
nmap _h :s/\v:(\w+) \=\>/\1:/g<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM MODE SWITCH LAG FIX
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if ! has("gui_running")
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

if g:use_light_colors
  highlight ColorColumn  ctermbg=255
  highlight StatusLineNC ctermbg=238 ctermfg=0
  highlight StatusLine   ctermfg=240 guibg=#ffffff
  highlight CursorLine   cterm=NONE ctermbg=255
  highlight Visual       ctermbg=3   ctermfg=0
  if version >= 700
    au InsertEnter * hi StatusLine ctermfg=2 guibg=#ffffff
    au InsertLeave * hi StatusLine guibg=#ffffff ctermfg=240
  endif
else
  " set up some custom colors
  highlight clear SignColumn
  highlight VertSplit    ctermbg=236
  highlight ColorColumn  ctermbg=237
  " highlight LineNr       ctermbg=236 ctermfg=240
  highlight CursorLineNr ctermbg=236 ctermfg=240
  highlight CursorLine   ctermbg=236
  " highlight StatusLineNC ctermbg=238 ctermfg=0
  " highlight StatusLine   ctermbg=240 ctermfg=12
  highlight IncSearch    ctermbg=3   ctermfg=1
  " highlight Search       ctermbg=1   ctermfg=3
  highlight Visual       ctermbg=3   ctermfg=0
  highlight Pmenu        ctermbg=240 ctermfg=12
  highlight PmenuSel     ctermbg=3   ctermfg=1
  highlight SpellBad     ctermbg=0   ctermfg=1
  " highlight the status bar when in insert mode
  if version >= 700
    au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
    au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12
  endif
endif


" highlight trailing spaces in annoying red
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" toggle spell check with <F5>
map <F5> :setlocal spell! spelllang=en_us<cr>
imap <F5> <ESC>:setlocal spell! spelllang=en_us<cr>

" Split current tmux window, running `bundle open` on the 
" argument-specified Gem name. Auto-completes from Gemfile.lock.
command! -nargs=* -complete=custom,ListGems BundleOpen silent execute "!tmux splitw 'bundle open <args>'"

" The function used to produce the autocomplete results.
function! ListGems(A,L,P)
  " Note that vim will filter for us... no need to do anything with A args.
  return system("grep -s '^ ' Gemfile.lock | sed 's/^ *//' | cut -d ' '  -f1 | sed 's/!//' | sort | uniq")
endfun

" Shortcut mapping.
nmap <leader>o :BundleOpen 
