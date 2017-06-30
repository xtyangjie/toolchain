" Vim color file
" Maintainer:   Hans Fugal <hans@fugal.net>
" Last Change:  $Date: 2004/06/13 19:30:30 $
" Last Change:  $Date: 2004/06/13 19:30:30 $
" URL:          http://hans.fugal.net/vim/colors/desert.vim
" Version:      $Id: desert.vim,v 1.1 2004/06/13 19:30:30 vimboss Exp $
" Vim Colors:   see http://blog.csdn.net/cp3alai/article/details/45509459

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="color_coded_desert"

" highlight groups
" 1. syntax highlighting groups;
" 2. color terminal definitions

" hi CursorIM
" hi Menu
" hi Scrollbar
" hi Tooltip
hi Comment      ctermfg=darkcyan guifg=SkyBlue
hi Constant     cterm=bold ctermfg=5 guifg=indianred
hi Cursor       guibg=khaki guifg=slategrey
hi CursorLine   cterm=none ctermbg=234
hi DiffAdd      ctermbg=4
hi DiffChange   ctermbg=5
hi DiffDelete   cterm=bold ctermfg=4 ctermbg=6
hi DiffText     cterm=bold ctermbg=1
hi Directory    ctermfg=darkcyan
hi Error        cterm=bold ctermfg=7 ctermbg=1
hi ErrorMsg     cterm=bold ctermfg=7 ctermbg=1
hi FoldColumn   ctermfg=darkgrey ctermbg=NONE guibg=grey30 guifg=tan
hi Folded       ctermfg=darkgrey ctermbg=NONE guibg=grey30 guifg=gold
hi Identifier   ctermfg=6 guifg=palegreen
hi Ignore       cterm=bold ctermfg=7 ctermfg=darkgrey guifg=grey40
hi IncSearch    cterm=NONE ctermfg=yellow ctermbg=green guifg=slategrey guibg=khaki
hi LineNr       ctermfg=3
hi ModeMsg      cterm=NONE ctermfg=brown guifg=goldenrod
hi NonText      cterm=bold ctermfg=darkblue guifg=LightBlue guibg=grey30
hi Normal       guifg=White guibg=grey20
hi PreProc      cterm=bold ctermfg=5 guifg=indianred
hi Question     ctermfg=green guifg=springgreen
hi Search       cterm=NONE ctermfg=grey ctermbg=blue guifg=wheat guibg=peru
hi Special      cterm=bold ctermfg=202 guifg=navajowhite
hi SpecialKey   cterm=bold ctermfg=darkgreen guifg=yellowgreen
hi Statement    ctermfg=3 guifg=khaki
hi StatusLine   cterm=bold,reverse guibg=#c2bfa5 guifg=black
hi StatusLineNC cterm=reverse guibg=#c2bfa5 guifg=grey50
hi Title        ctermfg=5 guifg=indianred
hi Todo         term=standout ctermfg=0 ctermbg=3 guifg=orangered guibg=yellow2
hi Type         cterm=bold ctermfg=2 gui=bold guifg=darkkhaki
hi Underlined   cterm=underline ctermfg=5
hi VertSplit    cterm=reverse guibg=#c2bfa5 guifg=grey50
hi Visual       cterm=reverse guifg=khaki guibg=olivedrab
hi VisualNOS    cterm=bold,underline
hi WarningMsg   ctermfg=1 guifg=salmon
hi WildMenu     ctermfg=0 ctermbg=3

"vim: sw=4
