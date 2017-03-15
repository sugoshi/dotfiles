nnoremap <C-r> :<C-u>source $MYVIMRC<CR>:echo 'read vimrc'<CR>
nnoremap o o<ESC>
nnoremap O O<ESC>
nnoremap t 0i<TAB><ESC>
nnoremap T 0x

nnoremap J jj
nnoremap K kk

nnoremap c <nop>
nnoremap cj J

" -----------------------------
" Window split / close shortcut.
" -----------------------------
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sx :<C-u>close<CR>

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

"call submode#enter_with('resizewin', 'n', '', 's.', '<C-w>>')

" A shortcut to call VimShell.
nnoremap sc :<C-u>VimShell<CR>
