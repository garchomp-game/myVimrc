source $VIMRUNTIME/defaults.vim
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <expr>
      \	%% getcmdtype() == ':' 
      \	? expand('%:h').'/' : '%%'
nnoremap <C-s> 
      \	:mksession! mysession.vim<CR>:wviminfo! mysession.viminfo<CR>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-n> :NERDTreeToggle<CR>


let chk = getftype("mysession.viminfo")
if chk != ""
  rviminfo! mysession.viminfo
endif

set nocompatible
filetype plugin on

call plug#begin()
" コメントの切り替え gc/gcc
Plug 'tpope/vim-commentary'
" ヘルプの日本語化
Plug 'vim-jp/vimdoc-ja'
" バッファ検索 <C-space>
Plug 'vim-ctrlspace/vim-ctrlspace'
" ファイラー、ツリー表示も可能。
Plug 'preservim/nerdtree'
" cdでtcdしてくれるやつ
Plug 'kana/vim-tabpagecd'
" NERDTreeとかにアイコン追加してくれるやつ
Plug 'ryanoasis/vim-devicons'
" fuzzy finderが使える
Plug 'junegunn/fzf'
" Files等の拡張コマンド提供
Plug 'junegunn/fzf.vim'
" markdownとかのプレビューをしてくれるやつ
Plug 'previm/previm'
" markdownのテーブルを一瞬で作ってくれるやつ。
" csvみたいにカンマ区切りで指定するだけなので楽ちん
" MarkTableで通常のテーブル、MarkTable!で一行目をタイトルにする
Plug 'mattn/vim-maketable'
" 置換の選択範囲や置換文字がリアルタイムで変更されるのでわかりやすい
Plug 'markonm/traces.vim'
" Google翻訳をしてくれるやつ。
" ビジュアルモードで選択したものに対して:Translateでできる。
Plug 'skanehira/translate.vim'
" 全プラグインの中で一番人気のあるgitのプラグインみたいだけど
" 使い方よくわからん。
Plug 'tpope/vim-fugitive'
" f移動やt移動がすごくしやすくなるやつ。
" ハイライトしている所めがけて移動すると最短で行ける。すごい
Plug 'unblevable/quick-scope'
" インデント間の上下移動が超快適にできる
Plug 'haya14busa/vim-edgemotion'
" ファイル名の検索を動的にしてくれるやつ。
" いわゆるfzfのFilesの動的バージョン
Plug 'kien/ctrlp.vim'
" 色々なアスタリスク検索ができる。
" シャープにすると逆になる。
Plug 'haya14busa/vim-asterisk'
" :Tabularize /,で良い感じにインデントを揃えてくれるやつ。
" 表形式のやつ作ってるときに便利かも
Plug 'godlygeek/tabular'
" /検索をしたときに、全体の要素数と、現在何個目なのかを
" 表示してくれる。
Plug 'google/vim-searchindex'
call plug#end()
" ctrlspace setting
cnoremap <C-Space> :CtrlSpace<CR>
set nocompatible
set hidden
set encoding=utf-8

" vim-astarisk
map *   <Plug>(asterisk-*)
map "   <Plug>(asterisk-#)
map g*  <Plug>(asterisk-g*)
map g#  <Plug>(asterisk-g#)
map z*  <Plug>(asterisk-z*)
map gz* <Plug>(asterisk-gz*)
map z#  <Plug>(asterisk-z#)
map gz# <Plug>(asterisk-gz#)

" fzf map
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-SPACE> :Buffers<CR>
nnoremap <silent> <space>p :Lines<CR>

" other
set helplang=ja,en
set tabstop=2
set shiftwidth=2
set lazyredraw
set ttyfast
set mouse-=a
set nocursorline
set norelativenumber
set nocursorcolumn
set grepprg=ack\ --nogroup\ --column\ $*
set grepformat=%f:%l:%c:%m
set showcmd
set number
set ruler
set sessionoptions+=resize
set background=dark
packadd! matchit
