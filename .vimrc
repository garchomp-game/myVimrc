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
nnoremap <C-n> :NERDTreeToggle<CR>

inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>


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
Plug 'preservim/nerdtree', { 'on': [] }
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
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release', 'on': []}

Plug 'weilbith/nvim-code-action-menu', { 'on': 'CodeActionMenu' }
call plug#end()
function! s:LazyLoadPlugs(timer) abort
  " save current position by marking Z because plug#load reloads current buffer
  normal! mZ
  call plug#load(
				\ 'vimdoc-ja',
				\ 'vim-tabpagecd',
				\ 'vim-devicons',
				\ 'fzf',
				\ 'fzf.vim',
				\ 'traces.vim',
				\ 'translate.vim',
				\ 'vim-fugitive',
				\ 'quick-scope',
				\ 'vim-edgemotion',
				\ 'tabular',
				\ 'vim-searchindex',
				\ 'coc.nvim',
				\ 'nerdtree',
				\ 'nvim-code-action-menu',
        \ )
  normal! g`Z
  delmarks Z

endfunction

call timer_start(20, function("s:LazyLoadPlugs"))

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
