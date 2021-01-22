:let g:notes_directories = ['~/Documents/Notes']

augroup NoWrapLineInNoteFile
    autocmd!
    autocmd FileType notes setlocal nowrap
    autocmd FileType notes setlocal textwidth=0
augroup END
