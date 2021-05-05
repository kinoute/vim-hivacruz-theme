let g:airline#themes#hivacruz#palette = {}
let g:airline#themes#hivacruz#palette.accents = {
      \ 'red': [ '#27C3CA' , '' , 38 , '' , '' ],
      \ }

" Normal mode
let s:N1 = [ '#283748' , '#FBCE33' , 23 , 221 ] " mode
let s:N2 = [ '#f8f8f8' , '#283748' , 231 , 23 ] " info
let s:N3 = [ '#f8f8f8' , '#283748' , 231 , 23 ] " statusline

let g:airline#themes#hivacruz#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#hivacruz#palette.normal_modified = {
      \ 'airline_c': [ '#283748' , '#FBCE33' , 23 , 221 , '' ] ,
      \ }

" Insert mode
let s:I1 = [ '#283748' , '#27C3CA' , 23 , 38  ]
let s:I2 = [ '#f8f8f8' , '#283748' , 231 , 23 ]
let s:I3 = [ '#f8f8f8' , '#283748' , 231 , 23 ]

let g:airline#themes#hivacruz#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#hivacruz#palette.insert_modified = {
      \ 'airline_c': [ '#283748' , '#27C3CA' , 23 , 38 , '' ] ,
      \ }

" Replace mode
let s:R1 = [ '#283748' , '#f92672' , 23 , 161 ]
let s:R2 = [ '#f8f8f8' , '#283748' , 231 , 23 ]
let s:R3 = [ '#f8f8f8' , '#283748' , 231 , 23 ]

let g:airline#themes#hivacruz#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#hivacruz#palette.replace_modified = {
      \ 'airline_c': [ '#283748' , '#f92672' , 23 , 161 , '' ] ,
      \ }

" Visual mode
let s:V1 = [ '#283748' , '#41BC8E' , 23 , 72 ]
let s:V2 = [ '#f8f8f8' , '#283748' , 231 , 23 ]
let s:V3 = [ '#f8f8f8' , '#283748' , 231 , 23 ]

let g:airline#themes#hivacruz#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#hivacruz#palette.visual_modified = {
      \ 'airline_c': [ '#283748' , '#41BC8E' , 23 , 72 , '' ] ,
      \ }

" Inactive
let s:IA = [ '#27C3CA' , '#283748' , 38 , 23, '' ]
let g:airline#themes#hivacruz#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#hivacruz#palette.inactive_modified = {
      \ 'airline_c': [ '#283748' , '#41BC8E' , 23 , 72 , '' ] ,
      \ }

" Warning/Error styling code from vim-airline's ["base16" theme](https://github.com/vim-airline/vim-airline-themes/blob/master/autoload/airline/themes/base16.vim)


" Warnings
let s:WI = [ '#282C34', '#e86310', 17, 166 ]
let g:airline#themes#hivacruz#palette.normal.airline_warning = [
      \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
      \ ]

let g:airline#themes#hivacruz#palette.normal_modified.airline_warning =
    \ g:airline#themes#hivacruz#palette.normal.airline_warning

let g:airline#themes#hivacruz#palette.insert.airline_warning =
    \ g:airline#themes#hivacruz#palette.normal.airline_warning

let g:airline#themes#hivacruz#palette.insert_modified.airline_warning =
    \ g:airline#themes#hivacruz#palette.normal.airline_warning

let g:airline#themes#hivacruz#palette.visual.airline_warning =
    \ g:airline#themes#hivacruz#palette.normal.airline_warning

let g:airline#themes#hivacruz#palette.visual_modified.airline_warning =
    \ g:airline#themes#hivacruz#palette.normal.airline_warning

let g:airline#themes#hivacruz#palette.replace.airline_warning =
    \ g:airline#themes#hivacruz#palette.normal.airline_warning

let g:airline#themes#hivacruz#palette.replace_modified.airline_warning =
    \ g:airline#themes#hivacruz#palette.normal.airline_warning


" Errors
let s:ER = [ '#282C34', '#FC4349', 17, 203 ]
let g:airline#themes#hivacruz#palette.normal.airline_error = [
      \ s:ER[0], s:ER[1], s:ER[2], s:ER[3]
      \ ]

let g:airline#themes#hivacruz#palette.normal_modified.airline_error =
    \ g:airline#themes#hivacruz#palette.normal.airline_error

let g:airline#themes#hivacruz#palette.insert.airline_error =
    \ g:airline#themes#hivacruz#palette.normal.airline_error

let g:airline#themes#hivacruz#palette.insert_modified.airline_error =
    \ g:airline#themes#hivacruz#palette.normal.airline_error

let g:airline#themes#hivacruz#palette.visual.airline_error =
    \ g:airline#themes#hivacruz#palette.normal.airline_error

let g:airline#themes#hivacruz#palette.visual_modified.airline_error =
    \ g:airline#themes#hivacruz#palette.normal.airline_error

let g:airline#themes#hivacruz#palette.replace.airline_error =
    \ g:airline#themes#hivacruz#palette.normal.airline_error

let g:airline#themes#hivacruz#palette.replace_modified.airline_error =
    \ g:airline#themes#hivacruz#palette.normal.airline_error

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#hivacruz#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#f8f8f8' , '#283748' , 231 , 23 , ''     ] ,
      \ [ '#f8f8f8' , '#283748' , 231 , 23  , ''     ] ,
      \ [ '#283748' , '#FBCE33' , 23 , 221 , 'bold' ] )
