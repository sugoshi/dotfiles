function! ToggleFileOption()
	if &fo =~? "r" || &fo =~? "o"
		set fo-=ro
	else
		set fo+=ro
	endif
	echom 'fileoption=' . &fo
endfunction

