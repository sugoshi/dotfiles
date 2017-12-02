nnoremap <Leader>o o<Esc>
nnoremap <leader>O O<ESC>

nnoremap J <C-f>
nnoremap K <C-b>

nnoremap <Leader>r :<C-u>source %<CR>:echom "loaded current buffer"<CR>
nnoremap <Leader>h :<C-u>noh<CR>
nnoremap <Leader>c :<C-u>call ToggleFileOption()<CR>
nnoremap <Leader>bd :<C-u>call DeleteHiddenBuffers()<CR>
nnoremap <Leader>br :<C-u>checktime<CR>

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
nnoremap s+ <C-w>+
nnoremap s- <C-w>-
nnoremap s> <C-w>>
nnoremap s< <C-w><
nnoremap sH <C-w>_
nnoremap sW <C-w>\|
nnoremap s= <C-w>=

nnoremap st :<C-u>tabnew %<CR>
nnoremap sd :<C-u>bd<CR>
