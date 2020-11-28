" Autopairs
let g:AutoPairsMultilineClose=0

" Autocomplete
" set wildmenu " Enhanced command line completion.
" set wildmode=full " Complete files like a shell.
" set shortmess+=c " Turn off completion messages
" set completeopt=menu,menuone,preview,noinsert,noselect
" set complete=.,w,b,u,i

" " mucomplete
" let g:mucomplete#enable_auto_at_startup = 1
" let g:mucomplete#chains = { 'default': ['ulti', 'uspl'] }
" let g:mucomplete#no_mappings = 1
" let g:mucomplete#spel#max = 10

" " Configure TAB and SHIFT-TAB to also function as CTRL-N and CTRL-P
" imap <tab> <plug>(MUcompleteFwd)
" imap <s-tab> <plug>(MUcompleteBwd)

" " Cycle completion methods
" inoremap <silent> <plug>(MUcompleteFwdKey) <c-y>
" imap <c-y> <plug>(MUcompleteCycFwd)

" let g:UltiSnipsExpandTrigger="<C-J>"
" let g:UltiSnipsJumpForwardTrigger="<C-J>"
" let g:UltiSnipsJumpBackwardTrigger="<C-K>"
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)
