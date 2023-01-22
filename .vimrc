let g:did_install_default_menus = 1
let g:did_install_syntax_menu   = 1
let g:did_indent_on             = 1
let g:did_load_filetypes        = 1
let g:did_load_ftplugin         = 1
let g:loaded_2html_plugin       = 1
let g:loaded_gzip               = 1
let g:loaded_man                = 1
let g:loaded_matchit            = 1
let g:loaded_matchparen         = 1
let g:loaded_netrwPlugin        = 1
let g:loaded_remote_plugins     = 1
let g:loaded_shada_plugin       = 1
let g:loaded_spellfile_plugin   = 1
let g:loaded_tarPlugin          = 1
let g:loaded_tutor_mode_plugin  = 1
let g:loaded_zipPlugin          = 1
let g:skip_loading_mswin        = 1
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
Plug 'tpope/vim-commentary', { 'on': [] }
" ヘルプの日本語化
Plug 'vim-jp/vimdoc-ja', { 'on': [] }
" ファイラー、ツリー表示も可能。
Plug 'preservim/nerdtree', { 'on': 'NerdTreeToggle' }
" cdでtcdしてくれるやつ
Plug 'kana/vim-tabpagecd', { 'on': [] }
" NERDTreeとかにアイコン追加してくれるやつ
Plug 'ryanoasis/vim-devicons', { 'on': [] }
" fuzzy finderが使える
Plug 'junegunn/fzf', { 'on': [] }
" Files等の拡張コマンド提供
Plug 'junegunn/fzf.vim', { 'on': [] }
" markdownのテーブルを一瞬で作ってくれるやつ。
" csvみたいにカンマ区切りで指定するだけなので楽ちん
" MarkTableで通常のテーブル、MarkTable!で一行目をタイトルにする
Plug 'mattn/vim-maketable', { 'on': 'MakeTable' }
" 置換の選択範囲や置換文字がリアルタイムで変更されるのでわかりやすい
Plug 'markonm/traces.vim', { 'on': [] }
" Google翻訳をしてくれるやつ。
" ビジュアルモードで選択したものに対して:Translateでできる。
Plug 'skanehira/translate.vim', { 'on': [] }
" 全プラグインの中で一番人気のあるgitのプラグインみたいだけど
" 使い方よくわからん。
Plug 'tpope/vim-fugitive', { 'on': [] }
" f移動やt移動がすごくしやすくなるやつ。
" ハイライトしている所めがけて移動すると最短で行ける。すごい
Plug 'unblevable/quick-scope', { 'on': [] }
" インデント間の上下移動が超快適にできる
Plug 'haya14busa/vim-edgemotion', { 'on': [] }
" :Tabularize /,で良い感じにインデントを揃えてくれるやつ。
" 表形式のやつ作ってるときに便利かも
Plug 'godlygeek/tabular', { 'on': [] }
" /検索をしたときに、全体の要素数と、現在何個目なのかを
" 表示してくれる。
Plug 'google/vim-searchindex', { 'on': [] }

Plug 'dstein64/vim-startuptime', { 'on': 'StartupTime' }
call plug#end()

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
