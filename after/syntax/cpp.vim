" cpp

syntax match  cppOperators "+\|->\|-\|\*\|?\|::\|<=\|=>\|<=>\|<<\|>>\|&\||\|!\|\~\|%\|=\|\."

highlight! link cppOperators Keyword

highlight! link cppStructure TypeOfElem
highlight! link cppAccess BigRed
highlight! link cppModifier BigRed
highlight! link cCharacter String
highlight! link cppType TypeOfElem
highlight! link cppCast BigRed
highlight! link cppExceptions Keyword
highlight! link cppOperator Keyword
highlight! link cppSTLconstant ConstantGreen
highlight! link cppSTLnamespace ConstantGreen
highlight! link cppStatement Identifier
