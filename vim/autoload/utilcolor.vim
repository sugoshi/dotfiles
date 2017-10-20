function! utilcolor#get_syn_id(transparent)
	let synid = synID(line("."), col("."), 1)
	if a:transparent
		return synIDtrans(synid)
	else
		return synid
	endif
endfunction
function! utilcolor#get_syn_attr(synid)
	let name = synIDattr(a:synid, "name")
	let ctermfg = synIDattr(a:synid, "fg", "cterm")
	let ctermbg = synIDattr(a:synid, "bg", "cterm")
	let guifg = synIDattr(a:synid, "fg", "gui")
	let guibg = synIDattr(a:synid, "bg", "gui")
    return {
		\ "name": name,
		\ "ctermfg": ctermfg,
		\ "ctermbg": ctermbg,
		\ "guifg": guifg,
		\ "guibg": guibg}
endfunction
function! utilcolor#get_syn_info()
	let baseSyn = utilcolor#get_syn_attr(utilcolor#get_syn_id(0))
	execute 'hi ' . baseSyn.name
	let linkedSyn = utilcolor#get_syn_attr(utilcolor#get_syn_id(1))
	echo "--- link to ---"
	execute 'hi ' . linkedSyn.name
endfunction
