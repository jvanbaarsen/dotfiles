" highlight trailing spaces in annoying red
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Set linenr colors
highlight LineNr ctermfg=grey ctermbg=NONE

" Set color for 80 mark
highlight ColorColumn ctermbg=black

hi Search ctermfg=black ctermbg=yellow
