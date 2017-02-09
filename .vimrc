set nocompatible " viとの互換性をとらない(vim独自拡張)
if has("syntax")
	syntax on
endif

source ~/.vim/myscripts/pluginlist.vim
source ~/.vim/keymap/basic.vim
colorscheme molokai

"---------------
" 画面表示の設定
"---------------

set number         " 行番号を表示する
set cmdheight=2    " メッセージ表示欄を2行確保
set nocursorline     " カーソル行の背景色を変える

set nocursorcolumn   " カーソル位置のカラムの背景色を変える

set laststatus=2   " ステータス行を常に表示
set statusline=%f%m%r%h%w\%=%y\[%{&ff}]\[%{&fileencoding}]\[L:%l/%L]

set list           " 不可視文字を表示
" 不可視文字の表示記号指定
set listchars=tab:>\ ,trail:-,eol:$,extends:❯,precedes:❮,nbsp:-

set ruler          " 行・列番号を表示
set showcmd        " 入力中のコマンドをステータスに表示
"set showmatch      " 対応する括弧を強調表示

set helpheight=999 " ヘルプを画面いっぱいに開く
set wrap           " 折り返し表示
"set timeoutlen=100
"set ttimeoutlen=10

" Graphic setting of VimShell
let g:vimshell_prompt_expr = 'getcwd()." > "'
let g:vimshell_prompt_pattern = '^\f\+ > '

"-----------------------
" カーソル移動関連の設定
"-----------------------

set backspace=indent,eol,start " Backspaceキーの影響範囲に制限を設けない
set whichwrap=b,s,h,l,<,>,[,]  " 行頭行末の左右移動で行をまたぐ
set scrolloff=8                " 上下8行の視界を確保
set sidescrolloff=16           " 左右スクロール時の視界を確保
set sidescroll=1               " 左右スクロールは一文字づつ行う

"-----------------------
" ファイル処理関連の設定
"-----------------------

set autoread   "外部でファイルに変更がされた場合は読みなおす
set confirm    " 保存されていないファイルがあるときは終了前に保存確認
set hidden     " 保存されていないファイルがあるときでも別のファイルを開くことが出来る
"set writebackup " ファイル上書き前にバックアップ作成。成功後削除される

set nobackup   " ファイル保存時にバックアップファイルを作らない
"set backupdir=~/vim.backup

set noswapfile " ファイル編集中にスワップファイルを作らない
"set directory=~/swap " スワップファイル作成先

set viminfo= " 履歴情報などの保存先

set noundofile " アンドゥファイルを作らない
"set undodir=

set encoding=utf-8
set fileformat=unix

"----------------
" 検索/置換の設定
"----------------

set hlsearch   " 検索文字列をハイライトする
"set incsearch  " インクリメンタルサーチを行う
"set ignorecase " 大文字と小文字を区別しない
"set smartcase  " 大文字と小文字が混在した言葉で検索を行った場合に限り、大文字と小文字を区別する
set wrapscan   " 最後尾まで検索を終えたら次の検索で先頭に移る
"set gdefault   " 置換の時 g オプションをデフォルトで有効にする

"----------------------
" タブ/インデントの設定
"----------------------

"set expandtab     " タブ入力を複数の空白入力に置き換える
set tabstop=4     " 画面上でタブ文字が占める幅
set shiftwidth=0  " 自動インデントでずれる幅
set softtabstop=0 " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent    " 改行時に前の行のインデントを継続する
set smartindent   " 改行時に入力された行の末尾に合わせて次の行のインデントを増減する

"---------------------------
" 動作環境との統合関連の設定
"---------------------------

" OSのクリップボードをレジスタ指定無しで Yank, Put 出来るようにする
set clipboard=unnamed,unnamedplus
" マウスの入力を受け付ける
"set mouse=a
" Windows でもパスの区切り文字を / にする
set shellslash
" インサートモードから抜けると自動的にIMEをオフにする
"set iminsert=2

"---------------------
" コマンドラインの設定
"---------------------

" コマンドラインモードでTABキーによるファイル名補完を有効にする
set wildmenu wildmode=list:longest,full
" コマンドラインの履歴を10000件保存する
set history=100

" ビープの設定

"ビープ音すべてを無効にする
set visualbell t_vb=
set noerrorbells "エラーメッセージの表示時にビープを鳴らさない

