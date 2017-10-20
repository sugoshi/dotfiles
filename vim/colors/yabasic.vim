let g:colors_name = expand('<sfile>:t:r')

set background=dark

" 全角スペースの表示
hi ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/

hi Comment ctermfg=cyan
hi PreProc ctermfg=magenta
hi NonText ctermfg=blue
hi PreProc ctermfg=magenta
hi Search term=reverse ctermfg=white ctermbg=blue
hi SpecialKey ctermfg=blue

"カーソル上の文字色
hi CursorLine NONE
hi CursorColumn ctermfg=black
hi CursorLineNr ctermbg=blue
hi MatchParen term=reverse ctermfg=white ctermbg=red
