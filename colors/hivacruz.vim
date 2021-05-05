" Name:         Hivacruz
" Author:       Yann Defretin <yann@defret.in>
" Maintainer:   Yann Defretin <yann@defret.in>
" Website:      https://github.com/kinoute/vim-hivacruz-theme
" License:      Vim License (see `:help license`)

set background=dark

highlight clear

if exists("syntax on")
syntax reset
endif

" Please check that Vim/Neovim is able to run this true-color only theme.
" If running in a terminal make sure termguicolors exists and is set.
if ($TERM_PROGRAM ==? 'Apple_Terminal')
  echomsg "Apple Terminal doesn't support 24-bit true colors. The theme will look weird:"
  echomsg "- We suggest to you use a Terminal that supports 24-bit true colors like iTerm2"
  echomsg '- Or you can  add "set notermguicolors" on top of your .vimrc to have a somewhat correct theme'
  finish
endif
if has('nvim')
    if has('nvim-0.4') && nvim_list_uis()[0]['ext_termcolors'] && !&termguicolors
        " The nvim_list_uis test indicates terminal Neovim vs GUI Neovim.
        " Note, versions prior to Neovim 0.4 did not set 'ext_termcolors'.
        echomsg "The theme might not look correct on your computer:"
        echomsg '- The termguicolors option must be set on top of your .vimrc, like this "set termguicolors"'
        finish
    endif
else " Vim
    if !has('gui_running') && !exists('&termguicolors')
        echomsg "The theme might not look correct on your computer:"
        echomsg '- A modern version of Vim with termguicolors is required'
        echomsg '- Add "set termguicolors" on top of your .vimrc file and be sure your Terminal support 24-bit true colors'
        finish
    elseif !has('gui_running') && !&termguicolors
        echomsg "The theme might not look correct on your computer:"
        echomsg '- The termguicolors option must be set on top of your .vimrc, like this "set termguicolors"'
        echomsg '- Be aware macOS default Vim is broken, use Homebrew Vim instead (if not already)'
        finish
    endif
endif

set t_Co=256

" Fix Syntax highlighting bug
autocmd BufEnter * :syntax sync fromstart

let g:colors_name = "hivacruz"

" Background and foreground
let s:background="#152638"
let s:foreground="#F8F8F8"

" Core colors "
let s:comment="#B87F62"
let s:function="#27C3CA"
let s:boolean="#27C3CA"
let s:string="#FBCE33"
let s:type="#EABF4D"
let s:constant="#FBCE33"
let s:exception="#FF8E30"
let s:gray="#4b6479"
let s:darkest_background="#212431"
let s:lighest_background="#283748"
let s:variable="#F8F8F8"
let s:keyword="#FF8E30"
let s:selection="#355274"
let s:red="#FC4349"
let s:warning="#e86310"
let s:structure="#A982FF"
let s:light_gray="#4b6479"
let s:hexa="#41BC8E"
let s:method="#2ABD90"
let s:number="#00ACF6"
let s:define="#A982FF"
let s:inherited="#AFE61D"
let s:builtin="#27C3CA"
let s:const= "#41BC8E"
let s:link="#8AA1E1"
let s:light_green="#14383E"
let s:light_red="#6D2D3D"

" let s:fg2="#e4e4e4"
" let s:fg3="#d0d0d0"
" let s:fg4="#4b6479"
" let s:bg2="#283748"
" let s:bg3="#3a4958"
" let s:bg4="#4d5a68"
" let s:bg5="#212431"
"let s:warning_back="#e81050"
" let s:warning2="#e86310"
"let s:red="#FC4349"
"let s:inherited="#AFE61D"

" Specify the colors used by the inbuilt terminal of Neovim and Vim
if has('nvim')
  let g:terminal_color_0  = '#202746'
  let g:terminal_color_1  = '#c94922'
  let g:terminal_color_2  = '#ac9739'
  let g:terminal_color_3  = '#c08b30'
  let g:terminal_color_4  = '#3d8fd1'
  let g:terminal_color_5  = '#6679cc'
  let g:terminal_color_6  = '#22a2c9'
  let g:terminal_color_7  = '#979db4'
  let g:terminal_color_8  = '#6b7394'
  let g:terminal_color_9  = '#c76b29'
  let g:terminal_color_10 = '#73ad43'
  let g:terminal_color_11 = '#5e6687'
  let g:terminal_color_12 = '#898ea4'
  let g:terminal_color_13 = '#dfe2f1'
  let g:terminal_color_14 = '#9c637a'
  let g:terminal_color_15 = '#FFFFFF'
else
  let g:terminal_ansi_colors = [
              \ '#202746', '#202746', '#ac9739', '#c08b30',
              \ '#3d8fd1', '#6679cc', '#22a2c9', '#979db4',
              \ '#6b7394', '#c76b29', '#73ad43', '#5e6687',
              \ '#898ea4', '#dfe2f1', '#9c637a', '#FFFFFF'
              \]
endif

" Background and text
exec 'highlight Normal guibg=' . s:background . ' guifg=' . s:foreground
" Color of mode text, -- INSERT --
exec 'highlight ModeMsg guifg=' . s:foreground . ' gui=none'
" Comments
exec 'highlight Comment guifg=' . s:comment
" Functions
exec 'highlight Function guifg=' . s:function
" Strings
exec 'highlight String guifg=' . s:string
" Booleans
exec 'highlight Boolean guifg=' . s:boolean
" Identifiers
exec 'highlight Identifier guifg=' . s:foreground
" Color of titles
exec 'highlight Title guifg=' . s:foreground . ' gui=none'
" const, static
exec 'highlight StorageClass guifg=' . s:type
" void, intptr_t
exec 'highlight Type guifg=' . s:type . ' gui=none'
" Numbers
exec 'highlight Constant guifg=' . s:const
" Character constants
exec 'highlight Character guifg=' . s:string
" Exceptions
exec 'highlight Exception guifg=' . s:exception
" ifdef/endif
exec 'highlight PreProc guifg=' . s:keyword
exec 'highlight Keyword guifg='s:keyword'  gui=bold'


" Status, split and tab lines
exec 'highlight StatusLine cterm=none guibg=' . s:lighest_background . ' guifg=' . s:foreground . ' gui=none'
exec 'highlight StatusLineNC cterm=none guibg=' . s:background . ' guifg=' . s:foreground . ' gui=none'
exec 'highlight VertSplit cterm=none guibg=' . s:lighest_background . ' guifg=' . s:gray . ' gui=none'
exec 'highlight Tabline cterm=none guibg=' . s:lighest_background . ' guifg=' . s:foreground . ' gui=none'
exec 'highlight TablineSel cterm=none guibg=' . s:background . ' guifg=' . s:foreground . ' gui=none'
exec 'highlight TablineFill cterm=none guibg=' . s:foreground . ' guifg=' . s:background . ' gui=none'
exec 'highlight StatusLineTerm cterm=none guibg=' . s:background . ' guifg=' . s:foreground . ' gui=none'
exec 'highlight StatusLineTermNC cterm=none guibg=' . s:background . ' guifg=' . s:foreground . ' gui=none'

" case in switch statement
exec 'highlight Label guifg=' . s:variable
" end-of-line '$', end-of-file '~'
exec 'highlight NonText guifg=' . s:background . ' gui=none'
" sizeof
exec 'highlight Operator guifg=' . s:keyword
" for, while
exec 'highlight Repeat guifg=' . s:keyword
" Search
exec 'highlight Search guibg=' . s:selection . ' guifg=' . s:foreground
exec 'highlight IncSearch guibg=' . s:selection . ' guifg=' . s:foreground

" '\n' sequences
exec 'highlight Special guifg=' . s:foreground

" if, else
exec 'highlight Statement guifg=' . s:keyword . ' gui=none'

" Visual selection
exec 'highlight Visual guibg=' . s:selection . ' guifg=' . s:foreground
exec 'highlight VisualNOS guibg=' . s:selection . ' guifg=fg gui=none'
exec 'highlight VisualInDiff guibg=' . s:selection . ' guifg=' . s:foreground

" Errors, warnings and whitespace-eol
exec 'highlight Error guifg=' . s:foreground . ' gui=reverse guibg=' . s:red
exec 'highlight ErrorMsg guibg=bg guifg=' . s:red
exec 'highlight WarningMsg guibg=bg guifg=' . s:warning

" struct, union, enum, typedef
exec 'highlight Structure guifg=' . s:structure

" Auto-text-completion menu
exec 'highlight Pmenu guibg=' . s:lighest_background . ' guifg=fg'
exec 'highlight PmenuSel guibg=' . s:darkest_background . ' guifg=fg'
exec 'highlight PmenuSbar guibg=' . s:darkest_background
exec 'highlight PmenuThumb guibg=' . s:darkest_background
exec 'highlight WildMenu guibg=' . s:foreground . ' cterm=none guifg=' . s:background

" Spelling errors
let &t_Cs = "\e[4:3m"
let &t_Ce = "\e[4:0m"
exec 'highlight clear SpellBad'
exec 'highlight clear SpellCap'
exec 'highlight clear SpellRare'
exec 'highlight clear SpellLocal'
exec 'highlight! SpellBad gui=undercurl guisp=' . s:red . ' term=undercurl cterm=undercurl'
exec 'highlight! SpellCap gui=undercurl guisp=' . s:red . ' term=undercurl cterm=undercurl'
exec 'highlight! SpellRare gui=undercurl guisp=' . s:red . ' term=undercurl cterm=undercurl'
exec 'highlight! SpellLocal gui=undercurl guisp=' . s:red . ' term=undercurl cterm=undercurl'

" Misc
exec 'highlight Question guifg=' . s:function . ' gui=none'
exec 'highlight MoreMsg guifg=' . s:function . ' gui=none'
exec 'highlight LineNr guibg=bg guifg=' . s:light_gray

" cursors
exec 'highlight Cursor guifg=bg guibg=fg'
exec 'highlight lCursor guifg=bg guibg=fg'
exec 'highlight CursorLineNr cterm=none guibg=' . s:lighest_background . ' guifg=' . s:foreground . ' gui=none'
exec 'highlight CursorColumn guibg=' . s:darkest_background
exec 'highlight ColorColumn guibg=' . s:darkest_background
exec 'highlight CursorLine cterm=none guibg=' . s:lighest_background

" folding
exec 'highlight Folded guibg=' . s:lighest_background . ' guifg='. s:foreground
exec 'highlight FoldColumn guibg=' . s:lighest_background . ' guifg=' . s:foreground

exec 'highlight SignColumn guibg=bg guifg=' . s:foreground
exec 'highlight Todo guibg=' . s:string . ' guifg=' . s:background
exec 'highlight SpecialKey guibg=bg guifg=' . s:foreground
exec 'highlight MatchParen guibg=' . s:lighest_background . ' cterm=underline gui=underline'
exec 'highlight Ignore guifg=' . s:function
exec 'highlight Underlined gui=underline cterm=underline'
exec 'highlight QuickFixLine guibg=' . s:lighest_background
exec 'highlight Delimiter guifg=' . s:foreground

exec 'highlight Directory guifg=' . s:function

exec 'highlight Conditional guifg='s:keyword
exec 'highlight ConstantGreen guifg='s:const
exec 'highlight BigRed guifg='s:red

exec 'highlight Define guifg='s:keyword

" diff
exec 'highlight DiffAdd guifg=' . s:method . ' guibg=' . s:background . ' gui=bold cterm=bold'
exec 'highlight DiffAdded guifg=' . s:background . ' guibg=' . s:method . ' gui=bold cterm=bold'
exec 'highlight DiffDelete guibg='s:red
exec 'highlight DiffRemoved guibg='s:red
exec 'highlight DiffChange  guibg=' . s:darkest_background . ' guifg='s:foreground
exec 'highlight DiffText guifg=' . s:foreground . ' guibg=' . s:red . ' gui=bold cterm=bold'

" numbers
exec 'highlight Float guifg='s:number
exec 'highlight Integer guifg='s:number
exec 'highlight Number guifg='s:number

exec 'highlight Tag guifg='s:keyword

" custom
exec 'highlight TypeOfElem guifg='s:define
exec 'highlight KeywordItalic guifg='s:keyword' cterm=italic gui=italic'
exec 'highlight TypeItalic guifg='s:type' cterm=italic gui=italic'
exec 'highlight Hexadecimal guifg='s:hexa
exec 'highlight MethodGreen guifg='s:method
exec 'highlight Builtins guifg='s:builtin
exec 'highlight Links guifg='s:foreground' gui=underline cterm=underline'
exec 'highlight InheritedClass guifg='s:inherited' gui=italic cterm=italic'
exec 'highlight MdLink guifg='s:type

" Go plugin
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_build_constraints      = 1
let g:go_highlight_chan_whitespace_error  = 1
let g:go_highlight_extra_types            = 1
let g:go_highlight_fields                 = 1
let g:go_highlight_format_strings         = 1
let g:go_highlight_function_calls         = 1
let g:go_highlight_function_parameters    = 1
let g:go_highlight_functions              = 1
let g:go_highlight_generate_tags          = 1
let g:go_highlight_operators              = 1
let g:go_highlight_space_tab_error        = 1
let g:go_highlight_string_spellcheck      = 1
let g:go_highlight_types                  = 1
let g:go_highlight_variable_assignments   = 1
let g:go_highlight_variable_declarations  = 1

" markdown
let g:vim_markdown_conceal = 0

" Php highlighting
let g:php_sql_query = 1
let g:php_html_in_string = 1
let g:php_var_selector_is_identifier = 1

" Python Highlighting
let g:python_highlight_all = 1

"Ruby
let g:ruby_operators = 1
let g:ruby_pseudo_operators = 1

" Disable ALE auto highlights
" let g:ale_set_highlights = 0
exec 'highlight ALEErrorSign guibg='s:red
exec 'highlight ALEWarningSign guibg='s:warning
exec 'highlight ALEError guifg='s:foreground' guibg='s:red
exec 'highlight ALEWarning guifg='s:foreground' guibg='s:warning

" Indentline
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#31364a'

" NerdTree
exec 'highlight NERDTreeOpenable guifg='s:keyword
exec 'highlight NERDTreeClosable guifg='s:keyword

" Gitgutter
exec 'highlight! link GitGutterAdd ConstantGreen'
exec 'highlight! link GitGutterChange Normal'
exec 'highlight! link GitGutterDelete BigRed'
exec 'highlight GitGutterAddLine guibg='s:light_green
exec 'highlight GitGutterChangeLine guibg='s:darkest_background
exec 'highlight GitGutterDeleteLine guibg='s:light_red

" FZF plugin
exec 'highlight fzf1 guifg=' . s:red . ' guibg=' . s:background
exec 'highlight fzf2 guifg=' . s:variable . ' guibg=' . s:background
exec 'highlight fzf3 guifg=' . s:function . ' guibg=' . s:background
exec 'highlight fzfNormal guifg=' . s:foreground
exec 'highlight fzfFgPlus guifg=' . s:foreground
exec 'highlight fzfBorder guifg=' . s:background
let g:fzf_colors = {
  \  'fg':      ['fg', 'fzfNormal'],
  \  'bg':      ['bg', 'Normal'],
  \  'hl':      ['fg', 'Number'],
  \  'fg+':     ['fg', 'fzfFgPlus'],
  \  'bg+':     ['bg', 'Pmenu'],
  \  'hl+':     ['fg', 'Number'],
  \  'info':    ['fg', 'String'],
  \  'border':  ['fg', 'fzfBorder'],
  \  'prompt':  ['fg', 'fzf2'],
  \  'pointer': ['fg', 'Exception'],
  \  'marker':  ['fg', 'StorageClass'],
  \  'spinner': ['fg', 'Type'],
  \  'header':  ['fg', 'CursorLineNr']
  \}

