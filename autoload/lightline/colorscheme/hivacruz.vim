let s:black = [ '#283748', 23 ]
let s:gray = [ '#4b6479', 60 ]
let s:white = [ '#f8f8f8', 231 ]
let s:cyan = [ '#27C3CA', 38 ]
let s:green = [ '#41BC8E', 72 ]
let s:orange = [ '#e86310', 166 ]
let s:pink = [ '#f92672', 161 ]
let s:red = [ '#FC4349', 203 ]
let s:yellow = [ '#FBCE33', 221 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ s:black, s:cyan ], [ s:white, s:black ] ]
let s:p.normal.middle = [ [ s:cyan, s:black ] ]
let s:p.normal.right = [ [ s:black, s:cyan ], [ s:black, s:gray ] ]
let s:p.normal.error = [ [ s:cyan, s:black ] ]
let s:p.normal.warning = [ [ s:yellow, s:black ] ]
let s:p.insert.left = [ [ s:black, s:green ], [ s:green, s:black ] ]
let s:p.visual.left = [ [ s:black, s:yellow ], [ s:yellow, s:black ] ]
let s:p.replace.left = [ [ s:black, s:red ], [ s:red, s:black ] ]
let s:p.inactive.left =  [ [ s:cyan, s:black ], [ s:white, s:black ] ]
let s:p.inactive.middle = [ [ s:gray, s:black ] ]
let s:p.inactive.right = [ [ s:black, s:cyan ], [ s:cyan, s:black ] ]
let s:p.tabline.left = [ [ s:cyan, s:black ] ]
let s:p.tabline.middle = [ [ s:cyan, s:black] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.tabline.tabsel = [ [ s:black, s:cyan ] ]

let g:lightline#colorscheme#hivacruz#palette = lightline#colorscheme#flatten(s:p)
