set background=dark
hi clear
let g:colors_name = expand('<sfile>:t:r')

" 全角スペースの表示
hi ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/

hi Comment ctermfg=cyan guifg=cyan
hi Error term=reverse ctermfg=white ctermbg=red guifg=white guibg=red
hi LineNr ctermfg=yellow guifg=yellow
hi NonText ctermfg=darkcyan guifg=darkcyan guibg=black
hi Normal guifg=white guibg=black
hi PreProc ctermfg=lightmagenta guifg=lightmagenta
hi Search term=reverse ctermfg=white ctermbg=blue guifg=white guibg=blue
hi SpecialKey ctermfg=darkcyan guifg=darkcyan
hi Statement ctermfg=red guifg=red

"カーソル上の文字色
hi CursorLine NONE
hi CursorColumn ctermfg=black guifg=black
hi CursorLineNr ctermfg=yellow ctermbg=blue guifg=yellow guibg=blue
hi MatchParen term=reverse ctermfg=white ctermbg=red guifg=white guibg=red

hi Folded gui=bold term=standout ctermbg=yellow ctermfg=black
	\ guibg=yellow guifg=black
hi FoldColumn gui=bold term=standout ctermbg=yellow ctermfg=black
	\ guibg=yellow guifg=black

hi Directory ctermfg=cyan guifg=cyan

hi DiffAdd ctermfg=black ctermbg=green
hi DiffChange ctermfg=black ctermbg=green
hi DiffDelete ctermfg=white ctermbg=red
hi DiffText ctermfg=black ctermbg=white

hi StatusLine term=bold,reverse cterm=bold ctermfg=black ctermbg=yellow
	\ gui=bold guifg=black guibg=yellow
hi StatusLineNC term=reverse cterm=reverse gui=reverse
hi TabLine term=underline cterm=underline ctermfg=white ctermbg=gray
	\ gui=underline guifg=white guibg=gray
hi TabLineSel term=bold cterm=bold ctermfg=black ctermbg=yellow
	\ gui=bold guifg=black guibg=yellow
