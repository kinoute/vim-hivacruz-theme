" color some bash stuff

syntax match shAliases "^\s*\zs\%(php\|convert\|youtube-dl\|ffmpeg\|ffprobe\|find\|fzf\|complete\|alias\|unalias\|alias\)\ze\s.*$" containedin=shIf,shFunctionOne,shCommandSub,shDo
syntax match shSetVar "^\s*\zs\%(declare\|local\)\ze\s.*$" containedin=shFunctionOne,shIf
syntax match shBuiltIns "^\s*\zs\%(return\|continue\|break\)\ze\s.*$" containedin=shStatement,shFunction
highlight! link shAliases Function
highlight! link shSetVar BigRed
highlight! link shBuiltIns Keyword
highlight! link bashSpecialVariables ConstantGreen

highlight! link shNumber Integer
highlight! link shStatement Function
highlight! link shRepeat Normal
highlight! link shVariable Normal
highlight! link shSetOption Keyword
highlight! link shLoop Keyword
highlight! link shShebang Comment
highlight! link shSet BigRed
highlight! link shFor Normal
highlight! link shSetList Normal
highlight! link shDerefSimple Normal
highlight! link shDerefVar Normal
highlight! link shParen KeywordItalic
highlight! link shOption KeywordItalic
highlight! link shAlias Function
highlight! link zshVariableDef Function
