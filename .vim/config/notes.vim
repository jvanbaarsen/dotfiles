:let g:notes_directories = ['/Users/jeroen/Library/Mobile\ Documents/iCloud\~md\~obsidian/Documents/notes']
:let g:notes_suffix = '.md'

augroup NoWrapLineInNoteFile
    autocmd!
    autocmd FileType notes setlocal nowrap
    autocmd FileType notes setlocal textwidth=0
augroup END
