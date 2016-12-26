nnoremap <C-r> :<C-u>source $MYVIMRC<CR>
nnoremap <CR> o<ESC>

" -----------------------------
" Window split / close shortcut.
" -----------------------------
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sc :<C-u>close<CR>

" --------------------------------------------------
" Cursor movement shortcut between the window.
" The movement of the window itself is in uppercase.
" Note: The 's' key is disabled.
" --------------------------------------------------
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H

" A shortcut to call VimShell.
nnoremap sx :<C-u>VimShell<CR>
