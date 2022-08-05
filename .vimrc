syntax enable
set history=2000
set hidden

set fileencoding=utf-8

" タブをスペースに変換
set tabstop=4
set shiftwidth=4
set expandtab

" 自動インデント
set autoindent

nnoremap ;  :
nnoremap :  ;
vnoremap ;  :
vnoremap :  ;

" クリップボード使用
set clipboard=unnamed

" バックスペースで削除
set backspace=indent,eol,start

" 検索ハイライト
set hlsearch

" maxOSでcrontab動かす際、tmpディレトリにバックアップファイル残してエラーになる
set backupskip=/tmp/*,/private/tmp/*


