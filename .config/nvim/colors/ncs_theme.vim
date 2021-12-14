" Author: Jacob Janzen <jacob.a.s.janzen@gmail.com>
" Maintainer: Jacob Janzen <jacob.a.s.janzen@gmail.com>" 
" License: MIT
" Thanks to @ggalindezb for the template

set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="Colorscheme name"

"----------------------------------------------------------------
" General settings                                              |
"----------------------------------------------------------------
"----------------------------------------------------------------
" Syntax group   | Foreground    | Background    | Style        |
"----------------------------------------------------------------

" --------------------------------
" Editor settings
" --------------------------------
hi Normal          ctermfg=15    ctermbg=0    cterm=none
hi Cursor          ctermfg=0    ctermbg=15    cterm=none
hi CursorLine      ctermfg=none    ctermbg=0    cterm=none
hi LineNr          ctermfg=7    ctermbg=none    cterm=none
hi CursorLineNR    ctermfg=none    ctermbg=none    cterm=none

" -----------------
" - Number column -
" -----------------
hi CursorColumn    ctermfg=none    ctermbg=0    cterm=none
hi FoldColumn      ctermfg=7    ctermbg=none    cterm=none
hi SignColumn      ctermfg=7    ctermbg=none    cterm=none
hi Folded          ctermfg=none    ctermbg=none    cterm=none

" -------------------------
" - Window/Tab delimiters - 
" -------------------------
hi VertSplit       ctermfg=0    ctermbg=none    cterm=none
hi ColorColumn     ctermfg=none    ctermbg=0    cterm=none
hi TabLine         ctermfg=15    ctermbg=0    cterm=none
hi TabLineFill     ctermfg=15    ctermbg=0    cterm=none
hi TabLineSel      ctermfg=none    ctermbg=0    cterm=none

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi Directory       ctermfg=none    ctermbg=none    cterm=underline
hi Search          ctermfg=0    ctermbg=15    cterm=none
hi IncSearch       ctermfg=0    ctermbg=15    cterm=none

" -----------------
" - Prompt/Status -
" -----------------
hi StatusLine      ctermfg=7    ctermbg=0    cterm=none
hi StatusLineNC    ctermfg=7    ctermbg=0    cterm=none
hi WildMenu        ctermfg=7    ctermbg=0    cterm=none
hi Question        ctermfg=3    ctermbg=none    cterm=none
hi Title           ctermfg=3    ctermbg=none    cterm=none
hi ModeMsg         ctermfg=3    ctermbg=none    cterm=none
hi MoreMsg         ctermfg=3    ctermbg=none    cterm=none

" --------------
" - Visual aid -
" --------------
hi MatchParen      ctermfg=none    ctermbg=none    cterm=underline
hi Visual          ctermfg=0    ctermbg=3    cterm=none
hi VisualNOS       ctermfg=0    ctermbg=3    cterm=none
hi NonText         ctermfg=0    ctermbg=none    cterm=none

hi Todo            ctermfg=3    ctermbg=none    cterm=none
hi Underlined      ctermfg=none    ctermbg=none    cterm=underline
hi Error           ctermfg=0    ctermbg=9    cterm=none
hi ErrorMsg        ctermfg=0    ctermbg=9    cterm=none
hi WarningMsg      ctermfg=0    ctermbg=9    cterm=none
hi Ignore          ctermfg=0    ctermbg=none    cterm=none
hi SpecialKey      ctermfg=14    ctermbg=none    cterm=none

" --------------------------------
" Variable types
" --------------------------------
hi Constant        ctermfg=12    ctermbg=none    cterm=none
hi String          ctermfg=10    ctermbg=none    cterm=none
hi StringDelimiter ctermfg=7    ctermbg=none    cterm=none
hi Character       ctermfg=4    ctermbg=none    cterm=none
hi Number          ctermfg=4    ctermbg=none    cterm=none
hi Boolean         ctermfg=4    ctermbg=none    cterm=none
hi Float           ctermfg=4    ctermbg=none    cterm=none

hi Identifier      ctermfg=2    ctermbg=none    cterm=none
hi Function        ctermfg=11    ctermbg=none    cterm=none

" --------------------------------
" Language constructs
" --------------------------------
hi Statement       ctermfg=1    ctermbg=none    cterm=none
hi Conditional     ctermfg=3    ctermbg=none    cterm=none
hi Repeat          ctermfg=3    ctermbg=none    cterm=none
hi Label           ctermfg=3    ctermbg=none    cterm=none
hi Operator        ctermfg=6    ctermbg=none    cterm=none
hi Keyword         ctermfg=3    ctermbg=none    cterm=none
hi Exception       ctermfg=3    ctermbg=none    cterm=none
hi Comment         ctermfg=8    ctermbg=none    cterm=none

hi Special         ctermfg=6    ctermbg=none    cterm=none
hi SpecialChar     ctermfg=6    ctermbg=none    cterm=none
hi Tag             ctermfg=6    ctermbg=none    cterm=none
hi Delimiter       ctermfg=7    ctermbg=none    cterm=none
hi SpecialComment  ctermfg=14    ctermbg=none    cterm=none
hi Debug           ctermfg=14    ctermbg=none    cterm=none

" ----------
" - C like -
" ----------
hi PreProc         ctermfg=5    ctermbg=none    cterm=none
hi Include         ctermfg=5    ctermbg=none    cterm=none
hi Define          ctermfg=5    ctermbg=none    cterm=none
hi Macro           ctermfg=5    ctermbg=none    cterm=none
hi PreCondit       ctermfg=5    ctermbg=none    cterm=none

hi Type            ctermfg=1    ctermbg=none    cterm=none
hi StorageClass    ctermfg=1    ctermbg=none    cterm=none
hi Structure       ctermfg=4    ctermbg=none    cterm=none
hi Typedef         ctermfg=4    ctermbg=none    cterm=none

" --------------------------------
" Diff
" --------------------------------
hi DiffAdd         ctermfg=7    ctermbg=0    cterm=none
hi DiffChange      ctermfg=11    ctermbg=0    cterm=none
hi DiffDelete      ctermfg=10    ctermbg=0    cterm=none
hi DiffText        ctermfg=11    ctermbg=7    cterm=none

" --------------------------------
" Completion menu
" --------------------------------
hi Pmenu           ctermfg=7    ctermbg=0    cterm=none
hi PmenuSel        ctermfg=7    ctermbg=0    cterm=none
hi PmenuSbar       ctermfg=none    ctermbg=0    cterm=none
hi PmenuThumb      ctermfg=7    ctermbg=0    cterm=none

" --------------------------------
" Spelling
" --------------------------------
hi SpellBad        ctermfg=10    ctermbg=none    cterm=none
hi SpellCap        ctermfg=11    ctermbg=none    cterm=none
hi SpellLocal      ctermfg=11    ctermbg=none    cterm=none
hi SpellRare       ctermfg=11    ctermbg=none    cterm=none

"--------------------------------------------------------------------
" Specific settings                                                 |
"--------------------------------------------------------------------
