set number "行番号を表示
set title "編集中のファイル名を表示
set showmatch "括弧入力時に対応する括弧を表示
set backspace=indent,eol,start
set matchtime=1 "括弧入力時に対応する括弧を表示
set autoindent
syntax on "コードの色分け
inoremap jj <Esc>"jjでesc

if has('vim_starting')
   " 初回起動時のみruntimepathにneobundleのパスを指定する
   set runtimepath+=/Users/gakusei1/.vim/bundle/neobundle.vim/
endif

" NeoBundleを初期化
call neobundle#begin(expand('/Users/gakusei1/.vim/bundle/'))

" インストールするプラグインをここに記述
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'Shougo/neocomplete.vim'

call neobundle#end()

" ファイルタイプ別のプラグイン/インデントを有効にする
filetype plugin indent on
