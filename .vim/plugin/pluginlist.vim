if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
	set runtimepath+=~/.vim/bundle/dein.vim
endif

let g:vimproc#download_windows_dll = 1

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
"NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/unite.vim'
"NeoBundle 'Shougo/vimproc.vim', {
"\ 'build' : {
"\     'windows' : 'tools\\update-dll-mingw',
"\     'cygwin' : 'make -f make_cygwin.mak',
"\     'mac' : 'make -f make_mac.mak',
"\     'linux' : 'make',
"\     'unix' : 'gmake',
"\    },
"\ }
"NeoBundle 'Shougo/vimshell.vim'
"NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'tomasr/molokai'
NeoBundle 'Shougo/dein.vim'
"NeoBundle 'kana/vim-submode'

call neobundle#end()

call dein#begin(expand('~/.vim/bundle/'))
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('kana/vim-submode')
call dein#end()

filetype plugin indent on

NeoBundleCheck
