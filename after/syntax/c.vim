
" color ifdef etc
syntax match cPreConditions "^\zs#\%(ifdef\|ifndef\|if\|else\|endif\)\ze"

" color define constant name differently
syntax match cDefineConstant "^#define\s\+\zs\w\+\ze.*""
highlight link cPreConditions Keyword
highlight link cDefineConstant Normal


syntax match cNewLineSep "\s\+\\$" containedin=cDefine
highlight! link cNewLineSep Normal
