let colors_name = "flatwhite"
set background=light

syntax reset

" Flatwhite implemented with ANSI colors to be used with flatwhite.itermcolors

" Syntax highlighting Groups
highlight MatchParen    ctermfg=0  ctermbg=14 cterm=none
highlight ToolbarLine   ctermfg=0  ctermbg=7  cterm=none
highlight ToolbarButton ctermfg=15 ctermbg=0  cterm=bold
highlight Comment       ctermfg=8  ctermbg=15 cterm=italic
highlight Constant      ctermfg=0  ctermbg=14 cterm=none
highlight Special       ctermfg=0  ctermbg=13 cterm=none
highlight Identifier    ctermfg=0  ctermbg=15 cterm=none
highlight Statement     ctermfg=0  ctermbg=15 cterm=none
highlight PreProc       ctermfg=0  ctermbg=13 cterm=none
highlight Type          ctermfg=0  ctermbg=15 cterm=bold
highlight Underlined    ctermfg=0  ctermbg=15 cterm=underline
highlight Ignore        ctermfg=8  ctermbg=7  cterm=none
highlight Error         ctermfg=0  ctermbg=9  cterm=none
highlight String        ctermfg=0  ctermbg=10 cterm=none
highlight Cursor        ctermfg=15 ctermbg=0  cterm=none

" HTML stuff
highlight htmlString    ctermfg=0  ctermbg=15 cterm=strikethrough

highlight CursorLine    ctermfg=0  ctermbg=7  cterm=none
highlight CursorLineNr  ctermfg=0  ctermbg=15 cterm=italic
highlight DiffAdd       ctermfg=0  ctermbg=2  cterm=none
highlight DiffChange    ctermfg=0  ctermbg=3  cterm=none
highlight DiffDelete    ctermfg=0  ctermbg=1  cterm=none
highlight ModeMsg       ctermfg=0  ctermbg=14 cterm=none
highlight Normal        ctermfg=0  ctermbg=15 cterm=none
highlight Linenr        ctermfg=8  ctermbg=15 cterm=none
highlight Search        ctermfg=0  ctermbg=8  cterm=none
highlight SpellBad      ctermfg=15 ctermbg=1  cterm=none
highlight SpellRare     ctermfg=3  ctermbg=11 cterm=none
highlight Statement     ctermfg=0  ctermbg=15 cterm=none
highlight StatusLine    ctermfg=7  ctermbg=0  cterm=none
highlight Visual        ctermfg=0  ctermbg=7  cterm=none
highlight Todo          ctermfg=0  ctermbg=11 cterm=none


highlight link Boolean         Constant
highlight link Character       String
highlight link ColorColumn     Statement
highlight link Conceal         Comment
highlight link Conditional     Statement
highlight link CursorColumn    CursorLine
highlight link CursorIM        Cursor
highlight link Debug           Special
highlight link Define          PreProc
highlight link Delimter        Special
highlight link DiffText        Normal
highlight link Directory       Type
highlight link EndOfBuffer     Ignore
highlight link ErrorMsg        Error
highlight link Exception       Statement
highlight link Float           Constant
highlight link FoldColumn      Ignore
highlight link Folded          Normal
highlight link Function        Identifier
highlight link Identifier      Normal
highlight link IncSearch       Search
highlight link Include         PreProc
highlight link Keyword         Statement
highlight link Label           Statement
highlight link Macro           PreProc
highlight link MoreMsg         Normal
highlight link MoreMsg         Visual
highlight link NonText         Ignore
highlight link Number          Constant
highlight link Operator        Normal
highlight link Pmenu           StatusLineNC
highlight link PmenuSbar       StatusLineNC
highlight link PmenuSel        StatusLine
highlight link PmenuThumb      StatusLine
highlight link PreCondit       PreProc
highlight link PreProc         Type
highlight link Question        ModeMsg
highlight link Question        Normal
highlight link Repeat          Statement
highlight link Scrollbar       PmenuSbar
highlight link SignColumn      FoldColumn
highlight link Special         Normal
highlight link SpecialChar     Special
highlight link SpecialComment  Special
highlight link SpecialKey      Special
highlight link SpellCap        SpellBad
highlight link SpellLocal      SpellRare
highlight link StorageClass    Type
highlight link Structure       Type
highlight link TabLine         StatusLineNC
highlight link TabLineFill     Normal
highlight link TabLineSel      StatusLine
highlight link Tag             Special
highlight link Title           Normal
highlight link Title           Statement
highlight link Typedef         Type
highlight link Underlined      Normal
highlight link VertSplit       StatusLineNC
highlight link VisualNOS       Visual
highlight link VisualNOS       Visual
highlight link WarningMsg      DiffChange
highlight link WarningMsg      DiffChange
highlight link WildMenu        StatusLineNC
