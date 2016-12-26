if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
	"call neobundle#rc(expand('~/.vim/bundle/'))
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'tomasr/molokai'

call neobundle#end()
filetype plugin indent on

NeoBundleCheck
