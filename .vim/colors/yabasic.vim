set background=dark

" 全角スペースの表示
hi ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/

colorscheme molokai
hi Comment ctermfg=cyan
hi NonText ctermfg=blue
hi PreProc ctermfg=magenta
hi Search term=reverse ctermfg=white ctermbg=blue
hi SpecialKey ctermfg=blue

"カーソル上の文字色
hi CursorLine NONE
hi CursorColumn ctermfg=black
hi CursorLineNr ctermbg=blue
hi MatchParen term=reverse ctermfg=white ctermbg=red
