let g:NERDTreeHijackNetrw = 0
let g:NERDTreeMinimalUI = 1
let NERDTreeDirArrows=0
let NERDTreeShowLineNumbers=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeShowHidden=1
let NERDTreeHighlightCursorline=1
" let NERDTreeDirArrowExpandable='|'
" let NERDTreeDirArrowCollapsible='-'

" Autoclose vim if NerdTree is only thing left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
