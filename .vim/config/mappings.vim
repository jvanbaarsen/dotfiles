let mapleader = ","
nmap <space> ,
map <Leader>nn :sp ~/Dropbox/notes/notes.txt<CR>
map <Leader>todo :sp ~/Dropbox/notes/todo.txt<CR>
map <Leader>sn :sp ~/.vim/UltiSnips<CR>
map <Leader>h :nohl<cr>
map <Leader>reload :source $MYVIMRC<CR>
nnoremap <Leader>wtf oputs "#" * 90<c-m>puts caller<c-m>puts "#" * 90<esc>
map <Leader>r :Vexplore .<CR>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

map Q <Nop>
map - <Nop>

command! W w

nnoremap <leader><leader> <c-^>

map <Leader>u :!rake db:migrate && rake db:migrate RAILS_ENV=test<cr>
map <Leader>d :!rake db:rollback && rake db:rollback RAILS_ENV=test<cr>
nmap <silent> <leader>k :TestNearest<CR>
nmap <silent> <leader>K :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" Disable search Highlight with Enter
nnoremap <cr> :noh<CR><CR>:<backspace>
