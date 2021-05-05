unlet b:current_syntax
syn include @SQL syntax/sql.vim
syn region sqlHeredoc start=/\v\<\<[-~]SQL/ end=/\vSQL/ keepend contains=@SQL
let b:current_syntax = "ruby"

syntax match rubyCmds "\s*\zs\%(puts\|system\)\ze\s.*$" containedin=rubyDoBlock

" Ruby Highlighting
highlight! link rubyCmds Function
highlight! link rubySymbol MethodGreen
highlight! link rubySymbolDelimiter Normal
" highlight! link rubyMethodBlock guifg=#27C3CA'
" highlight! link rubyConditionalExpression guifg=#27C3CA'
highlight! link rubyConstant TypeItalic
highlight! link rubyPseudoVariable Function
highlight! link rubyComment Comment
highlight! link rubyMagicComment Comment
highlight! link rubyAttribute Builtins
highlight! link rubyLocalVariableOrMethod Label
highlight! link rubyGlobalVariable Normal
highlight! link rubyValidation Normal
highlight! link rubyMacro Normal
highlight! link rubyEntity Normal
highlight! link rubyEntities Normal
highlight! link rubyInstanceVariable Label
highlight! link rubyKeyword Keyword
highlight! link rubyLambdaOperator Keyword
highlight! link rubyKeywordAsMethod Keyword
highlight! link rubyClassDeclaration Keyword
highlight! link rubyClass Keyword
highlight! link rubyNumber Integer
highlight! link rubyInteger Integer
highlight! link rubyBoolean Function
highlight! link rubyClassName StorageClass
highlight! link rubyModuleName StorageClass
highlight! link rubyPercentRegexpDelimiter String
highlight! link rubyRegexpCharClass MethodGreen
highlight! link rubyRegexpAnchor MethodGreen
highlight! link rubyRegexpQuantifier MethodGreen
highlight! link rubyAccess BigRed
highlight! link rubyMultilineComment Comment
highlight! link rubyRoute Function
" highlight! link rubyBlockParameterList KeywordItalic
