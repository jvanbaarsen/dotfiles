let g:coc_global_extensions = [
      \ 'coc-tsserver'
      \ , 'coc-snippets'
      \ , 'coc-json'
      \ , 'coc-html'
      \ , 'coc-solargraph'
      \ , 'coc-jest'
      \ , 'coc-react-refactor'
      \ , 'coc-prisma' ]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
nnoremap <silent> K :call CocAction('doHover')<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>
" nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>
nmap <leader>do <Plug>(coc-codeaction)
xmap <leader>f  <Plug>(coc-fix-current)
nmap <leader>f  <Plug>(coc-fix-current)
nmap <leader>rn <Plug>(coc-rename)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
command! -nargs=0 Format :call CocAction('format')

" highlight link CocErrorSign Error
" highlight link CocWarningSign Todo
" highlight link CocInfoSign Identifier
" highlight link CocFloating VisualNC
