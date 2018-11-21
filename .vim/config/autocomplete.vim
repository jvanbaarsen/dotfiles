" Autopairs
let g:AutoPairsMultilineClose=0

" Autocomplete
set wildmenu " Enhanced command line completion.
set wildmode=full " Complete files like a shell.
set shortmess+=c " Turn off completion messages
set completeopt=menu,menuone,preview,noinsert,noselect
set complete=.,w,b,u,i

" mucomplete
let g:mucomplete#enable_auto_at_startup = 1
let g:mucomplete#chains = { 'default': ['ulti', 'c-n', 'omni', 'uspl', 'path'] }
let g:mucomplete#no_mappings = 1
let g:mucomplete#spel#max = 10

" Configure TAB and SHIFT-TAB to also function as CTRL-N and CTRL-P
imap <tab> <plug>(MUcompleteFwd)
imap <s-tab> <plug>(MUcompleteBwd)

" Cycle completion methods
inoremap <silent> <plug>(MUcompleteFwdKey) <c-y>
imap <c-y> <plug>(MUcompleteCycFwd)

let g:UltiSnipsExpandTrigger="<C-J>"
let g:UltiSnipsJumpForwardTrigger="<C-J>"
let g:UltiSnipsJumpBackwardTrigger="<C-K>"
