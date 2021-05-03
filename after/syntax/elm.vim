" Elm

syntax match  elmOperators "+\|->\|-\|\*\|?\|:\|<=\|=>\|<=>\|<<\|>>\|&\||\|!\|\~\|%\|=\|\."

highlight! link elmOperators Keyword

highlight! link elmType MethodGreen
highlight! link elmTopLevelTypedef MethodGreen
highlight! link elmBraces Keyword
