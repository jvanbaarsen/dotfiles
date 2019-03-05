colorscheme dim
" highlight trailing spaces in annoying red
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Regulary check what OSXs color mode is.
function! SetBackgroundMode(...)
  let s:new_bg = "light"
  let s:mode = systemlist("defaults read -g AppleInterfaceStyle")[0]
  if s:mode ==? "dark"
    echo "Dark"
      let s:new_bg = "dark"
  else
      let s:new_bg = "light"
  endif

  if &background !=? s:new_bg
      let &background = s:new_bg
      AirlineTheme appsignal
  endif
endfunction

" call SetBackgroundMode()
call timer_start(1, "SetBackgroundMode", {"repeat": 0})
call timer_start(3000, "SetBackgroundMode", {"repeat": -1})
