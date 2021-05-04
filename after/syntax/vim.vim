syntax match vimEndIf "^endif$"
syntax match vimStr "\s*\%(Plugin\|Plug\)\s'\zs.*\ze$" containedin=vimUsrCmd,vimNotFunc
syntax match vimBrackets ":\|=\|{\|}" containedin=vimUsrCmd,vimStr

highlight! link vimEndIf Keyword
highlight! link vimStr String
highlight! link vimBrackets Normal
highlight! link vimCommand Function
highlight! link vimMapRhs Function
highlight! link vimMapRhsExtend Function
highlight! link vimOption Normal
highlight! link vimSetEqual Normal
highlight! link vimNotFunc Keyword
highlight! link vimNotation TypeItalic
highlight! link vimOper TypeOfElem
