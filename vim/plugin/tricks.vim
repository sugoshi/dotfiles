function! s:reloadRuncommands()
	silent! execute 'source $MYVIMRC'
	echom 'reloaded vimrc'
endfunction

command! -nargs=0 Reloadrc call s:reloadRuncommands()
command! -nargs=0 Editrc edit $MYVIMRC
