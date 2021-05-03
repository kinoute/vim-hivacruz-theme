" color ifdef etc
syntax match cPreConditions "^\zs#\%(ifdef\|ifndef\|if\|else\|endif\)\ze"

" color define constant name differently
syntax match cDefineConstant "^#define\s\+\zs\w\+\ze.*""
highlight! link cPreConditions Keyword
highlight! link cDefineConstant Normal

" NewLine Delimiter
syntax match cNewLineSep "\s\+\\$" containedin=cDefine
highlight! link cNewLineSep Normal

" C Operators
syntax match  cOperators "+\|->\|-\|\*\|?\|::\|<<\|>>\|&\||\|!\|\~\|%\|=\|\."
highlight! link cOperators Keyword

" parentheses & brackets
syntax match cBrackets "{\|}\|(\|)"
highlight! link cBrackets Normal

highlight! link cNumber Number
highlight! link cConstant ConstantGreen
highlight! link cStorageClass BigRed
highlight! link cType TypeOfElem
highlight! link cStructure TypeOfElem
highlight! link cParen Normal
highlight! link cPreCondit Normal
