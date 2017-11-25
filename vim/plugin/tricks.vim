function! s:reloadRuncommands()
	silent! execute 'source $MYVIMRC'
	echom 'reloaded vimrc'
endfunction

function! ToggleFileOption()
	if &fo =~? "r" || &fo =~? "o"
		set fo-=ro
	else
		set fo+=ro
	endif
	echom 'fileoption=' . &fo
endfunction

command! -nargs=0 Reloadrc call s:reloadRuncommands()
command! -nargs=0 Editrc edit $MYVIMRC
