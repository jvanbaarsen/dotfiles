let g:coc_global_extensions = [ 'coc-tsserver', 'coc-snippets', 'coc-json', 'coc-html', 'coc-solargraph', 'coc-jest', 'coc-eslint', 'coc-prisma' ]

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)
command! -nargs=0 Format :call CocAction('format')

highlight link CocErrorSign Error
highlight link CocWarningSign Todo
highlight link CocInfoSign Identifier
highlight link CocFloating VisualNC

" CocFloating    xxx links to NormalFloat
