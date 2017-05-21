let s:vimfiles_top = expand('<sfile>:p:h') . '/..'
let s:plugin_dir = s:vimfiles_top . '/bundle'

if has('vim_starting')
	let s:runtimepath = &g:runtimepath . ','
	let s:runtimepath = s:runtimepath . s:vimfiles_top . '/bundle/neobundle.vim/,'
	let s:runtimepath = s:runtimepath . s:vimfiles_top . '/bundle/dein.vim/'
	let &g:runtimepath = s:runtimepath
	unlet s:runtimepath
endif

let g:vimproc#download_windows_dll = 1

call neobundle#begin(s:plugin_dir)
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'tomasr/molokai'
NeoBundle 'Shougo/dein.vim'

call neobundle#end()

call dein#begin(s:plugin_dir)
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('kana/vim-submode')
call dein#end()

filetype plugin indent on

NeoBundleCheck
