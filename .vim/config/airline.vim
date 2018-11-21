let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers=0
let g:airline#extensions#tabline#show_close_button=0
let g:airline#extensions#tabline#show_splits=0

let g:airline_section_y =[]
let g:airline_section_z = airline#section#create(['linenr', 'maxlinenr', ' :%3v'])
