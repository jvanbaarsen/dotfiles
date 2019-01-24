" vim-airline template by chartoin (http://github.com/chartoin)
" Base 16 Classic Scheme by Jason Heeris (http://heeris.id.au)
let g:airline#themes#appsignal#palette = {}
let s:gui00 = "#151515"
let s:gui01 = "#202020"
let s:gui02 = "#303030"
let s:gui03 = "#505050"
let s:gui04 = "#B0B0B0"
let s:gui05 = "#D0D0D0"
let s:gui06 = "#E0E0E0"
let s:gui07 = "#F5F5F5"
let s:gui08 = "#AC4142"
let s:gui09 = "#D28445"
let s:gui0A = "#F4BF75"
let s:gui0B = "#90A959"
let s:gui0C = "#75B5AA"
let s:gui0D = "#6A9FB5"
let s:gui0E = "#AA759F"
let s:gui0F = "#8F5536"

let s:cterm00 = 0
let s:cterm01 = 8
let s:cterm02 = 1
let s:cterm03 = 9
let s:cterm04 = 2
let s:cterm05 = 10
let s:cterm06 = 3
let s:cterm07 = 11
let s:cterm08 = 4
let s:cterm09 = 12
let s:cterm0A = 5
let s:cterm0B = 13
let s:cterm0C = 6
let s:cterm0D = 14
let s:cterm0E = 7
let s:cterm0F = 15

if &background == "dark"
  let s:N1   = [ s:gui01, s:gui0B, s:cterm01, s:cterm07 ]
  let s:N2   = [ s:gui06, s:gui02, s:cterm0E, s:cterm01 ]
  let s:N3   = [ s:gui09, s:gui01, s:cterm0E, s:cterm01 ]

  let s:M1   = [ s:gui01, s:gui0B, s:cterm01, s:cterm07 ]
  let s:M2   = [ s:gui06, s:gui02, s:cterm0A, s:cterm0B ]
  let s:M3   = [ s:gui09, s:gui01, s:cterm0A, s:cterm0B ]

  let s:I1   = [ s:gui01, s:gui0D, s:cterm09, s:cterm08 ]
  let s:I2   = [ s:gui06, s:gui02, s:cterm0F, s:cterm09 ]
  let s:I3   = [ s:gui09, s:gui01, s:cterm0F, s:cterm09 ]

  let s:R1   = [ s:gui01, s:gui08, s:cterm03, s:cterm02 ]
  let s:R2   = [ s:gui06, s:gui02, s:cterm0F, s:cterm03 ]
  let s:R3   = [ s:gui09, s:gui01, s:cterm0F, s:cterm03 ]

  let s:V1   = [ s:gui01, s:gui0E, s:cterm05, s:cterm04 ]
  let s:V2   = [ s:gui06, s:gui02, s:cterm00, s:cterm05 ]
  let s:V3   = [ s:gui09, s:gui01, s:cterm00, s:cterm05 ]

  let s:IA1   = [ s:gui05, s:gui01, s:cterm0E, s:cterm01 ]
  let s:IA2   = [ s:gui05, s:gui01, s:cterm0E, s:cterm01 ]
  let s:IA3   = [ s:gui05, s:gui01, s:cterm0E, s:cterm01 ]
else
  let s:N1   = [ s:gui01, s:gui0B, s:cterm01, s:cterm07 ]
  let s:N2   = [ s:gui06, s:gui02, s:cterm01, s:cterm0E ]
  let s:N3   = [ s:gui09, s:gui01, s:cterm01, s:cterm0E ]

  let s:M1   = [ s:gui01, s:gui0B, s:cterm01, s:cterm07 ]
  let s:M2   = [ s:gui06, s:gui02, s:cterm0F, s:cterm0B ]
  let s:M3   = [ s:gui09, s:gui01, s:cterm0F, s:cterm0B ]

  let s:I1   = [ s:gui01, s:gui0D, s:cterm09, s:cterm08 ]
  let s:I2   = [ s:gui06, s:gui02, s:cterm0F, s:cterm09 ]
  let s:I3   = [ s:gui09, s:gui01, s:cterm0F, s:cterm09 ]

  let s:R1   = [ s:gui01, s:gui08, s:cterm03, s:cterm02 ]
  let s:R2   = [ s:gui06, s:gui02, s:cterm0F, s:cterm03 ]
  let s:R3   = [ s:gui09, s:gui01, s:cterm0F, s:cterm03 ]

  let s:V1   = [ s:gui01, s:gui0E, s:cterm05, s:cterm04 ]
  let s:V2   = [ s:gui06, s:gui02, s:cterm00, s:cterm05 ]
  let s:V3   = [ s:gui09, s:gui01, s:cterm00, s:cterm05 ]

  let s:IA1   = [ s:gui05, s:gui01, s:cterm01, s:cterm0E ]
  let s:IA2   = [ s:gui05, s:gui01, s:cterm01, s:cterm0E ]
  let s:IA3   = [ s:gui05, s:gui01, s:cterm01, s:cterm0E ]
endif

let g:airline#themes#appsignal#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#appsignal#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#appsignal#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#appsignal#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#appsignal#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

let g:airline#themes#appsignal#palette.normal_modified = airline#themes#generate_color_map(s:M1, s:M2, s:M3)
