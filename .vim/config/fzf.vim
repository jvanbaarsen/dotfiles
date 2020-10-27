let g:fzf_layout = { 'down': '~20%' }
" let g:fzf_layout = {
"   \ 'window': {
"   \   'width': 0.7,
"   \   'height': 0.6,
"   \   'border': '',
"   \   'highlight': 'VertSplit'
"   \ }
"   \ }
" let g:fzf_colors =
" \ { 'fg':      ['fg', 'Normal'],
"   \ 'bg':      ['bg', 'Normal'],
"   \ 'hl':      ['fg', 'Comment'],
"   \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"   \ 'bg+':     ['bg', 'Normal'],
"   \ 'hl+':     ['fg', 'Statement'],
"   \ 'info':    ['fg', 'PreProc'],
"   \ 'border':  ['fg', 'Ignore'],
"   \ 'prompt':  ['fg', 'Conditional'],
"   \ 'pointer': ['fg', 'Exception'],
"   \ 'marker':  ['fg', 'Keyword'],
"   \ 'spinner': ['fg', 'Label'],
"   \ 'header':  ['fg', 'Comment'] }

" let g:fzf_colors = {
"   \ 'fg': ['fg', 'Normal'],
"   \ 'fg+': ['fg', 'Normal'],
"   \ 'bg': ['bg', 'Normal'],
"   \ 'bg+': ['bg', 'Cursor'],
"   \ 'hl': ['fg', 'Search'],
"   \ 'hl+': ['fg', 'Search'],
"   \ 'info': ['fg', 'Number'],
"   \ 'gutter': ['bg', 'Normal'],
"   \ 'prompt': ['fg', 'Normal'],
"   \ 'pointer': ['fg', 'Normal'],
"   \ 'marker': ['fg', 'Normal'],
"   \ 'spinner': ['fg', 'Normal'],
"   \ 'header': ['fg', 'Comment'],
"   \ }

let g:fzf_preview_window = ''

nmap <leader>m :Files<CR>
nmap <c-\> :Buffers<CR>
