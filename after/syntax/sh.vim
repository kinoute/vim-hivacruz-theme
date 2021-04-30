" color some bash stuff

" color some bash stuff
syntax match shAliases "^\s*\zs\%(find\|fzf\|complete\|alias\|unalias\|alias\)\ze\s.*$" containedin=shIf,shFunctionOne,shCommandSub
syntax match shSetVar "^\s*\zs\%(declare\|local\)\ze\s.*$" containedin=shFunctionOne
highlight! link shAliases Function
highlight! link shSetVar BigRed
