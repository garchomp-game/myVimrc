source $VIMRUNTIME/defaults.vim
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <expr>
			\	%% getcmdtype() == ':' 
			\	? expand('%:h').'/' : '%%'
nnoremap <C-s> 
			\	:mksession! mysession.vim<CR>
			\	:wviminfo! mysession.viminfo<CR>
let chk=getftype("mysession.viminfo")
if chk != ""
	rviminfo! mysession.viminfo
endif
set nocompatible
filetype plugin on

call plug#begin()
	Plug 'tpope/vim-commentary'
call plug#end()

set helplang=ja,en
set tabstop=2
set shiftwidth=2
set lazyredraw
set ttyfast
set mouse=
set nocursorline
set norelativenumber
set nocursorcolumn
set grepprg=ack\ --nogroup\ --column\ $*
set grepformat=%f:%l:%c:%m
set showcmd
set number
set ruler
set sessionoptions+=resize
packadd! matchit
