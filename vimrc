"
"          (_)
"     __   ___ _ __ ___  _ __ ___
"     \ \ / / | '_ ` _ \| '__/ __|
"      \ V /| | | | | | | | | (__
"       \_/ |_|_| |_| |_|_|  \___|
"

let mapleader = "\<Space>"

"Automatic vim-plug installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

	Plug 'junegunn/vim-plug'

	Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
	let g:ycm_key_list_select_completion = ['<Tab>']
	let g:ycm_key_list_previous_completion = ['<S-Tab>']

	Plug 'easymotion/vim-easymotion'
	let g:EasyMotion_keys = 'asdfhjklwb'
	map f <Plug>(easymotion-prefix)

	Plug 'gavinbeatty/dragvisuals.vim'
	runtime plugin/dragvisuals.vim
	vmap <expr> H DVB_Drag('left')
	vmap <expr> J DVB_Drag('down')
	vmap <expr> K DVB_Drag('up')
	vmap <expr> L DVB_Drag('right')
	vmap <expr> D DVB_Duplicate()

	Plug 'scrooloose/nerdtree'
	autocmd StdinReadPre * let s:std_in=1
	autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
	nnoremap <Leader>n :NERDTreeToggle<Enter>
	nnoremap <silent> <Leader>f :NERDTreeFind<CR>
	let NERDTreeAutoDeleteBuffer = 1
	let NERDTreeMinimalUI = 1
	let NERDTreeDirArrows = 1

	Plug 'PotatoesMaster/i3-vim-syntax'

	Plug 'Raimondi/delimitMate'

	Plug 'alvan/vim-closetag'
	let g:closetag_filetypes = 'html,xhtml,xml,php,js,jsx,ts'
	let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.php,*.js,*.jsx,*.ts'

call plug#end()

syntax on
filetype indent on
filetype plugin on
set nocp
set autoread
set ignorecase
set smartcase
set hlsearch
set incsearch
set shiftwidth=2
set smarttab
set tabstop=2
set scrolloff=5
set autoindent
set encoding=utf-8
set number
set cursorline
set showmatch
set splitbelow splitright
set backspace=indent,eol,start
set mouse=a

"Backup
set nobackup
set nowritebackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

"Session
nnoremap <F2> :mksession! ./.vim_session<CR>
nnoremap <F3> :source ./.vim_session<CR>

"No more swap files
set nobackup
set nowb
set noswapfile

nnoremap ; :
nnoremap : ;
command WQ wq
command Wq wq
command W w
command Q q
nnoremap B ^
nnoremap E $

vmap <Tab> >gv
vmap <S-Tab> <gv
map <Leader>a ggVG

nnoremap <Leader>h :wincmd h<CR>
nnoremap <Leader>l :wincmd l<CR>
nnoremap <Leader>k :wincmd k<CR>
nnoremap <Leader>j :wincmd j<CR>
nnoremap <Leader>p :wincmd p<CR>

nmap 1 gT
nmap 2 gt

autocmd BufWritePre * %s/\s\+$//e

"OSCON 2013
highlight ColorColumn ctermbg=20
call matchadd('ColorColumn', '\%81v', 100)

set backspace=eol,start,indent
set whichwrap+=<,>,h,l
