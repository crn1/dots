"
"          (_)
"     __   ___ _ __ ___  _ __ ___
"     \ \ / / | '_ ` _ \| '__/ __|
"      \ V /| | | | | | | | | (__
"       \_/ |_|_| |_| |_|_|  \___|
"

let mapleader = "\<Space>"

call plug#begin('C:/Users/crn1/AppData/Local/nvim/plugged')

	Plug 'junegunn/vim-plug'

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

	Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
	autocmd StdinReadPre * let s:std_in=1
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
	nnoremap <Leader>n :NERDTreeToggle<Enter>
	nnoremap <silent> <Leader>f :NERDTreeFind<CR>
	let NERDTreeAutoDeleteBuffer = 1
	let NERDTreeMinimalUI = 1
	let NERDTreeDirArrows = 1
	let NERDTreeHijackNetrw = 0

	Plug 'mattn/emmet-vim'
	let g:user_emmet_install_global = 0
	autocmd FileType html,css,scss,php EmmetInstall
	imap <expr> ` emmet#expandAbbrIntelligent("\`")
	let g:user_emmet_complete_tag = 1
	let g:user_emmet_attr_quotes = 'single'
	let g:user_emmet_settings = {
	\	'html': { 'quote_char': "'" },
	\	'css': { 'quote_char': "'" },
	\	'scss': { 'quote_char': "'" },
	\	'js': { 'quote_char': "'" },
	\	'php': { 'quote_char': "'" }
	\}

	Plug 'Raimondi/delimitMate'

	Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
	let g:ycm_key_list_select_completion = ['<Tab>']
	let g:ycm_key_list_previous_completion = ['<S-Tab>']

	Plug 'alvan/vim-closetag'
	let g:closetag_filetypes = 'html,,xml,php,js'
	let g:closetag_filenames = '*.html,*.xml,*.php,*.js,'

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
set guifont=Consolas:h14
color default

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

vmap <Tab> >gv
vmap <S-Tab> <gv
map <Leader>a ggVG
map <Leader>b ^
map <Leader>e $

nnoremap <Leader>h :wincmd h<CR>
nnoremap <Leader>l :wincmd l<CR>
nnoremap <Leader>k :wincmd k<CR>
nnoremap <Leader>j :wincmd j<CR>
nnoremap <Leader>p :wincmd p<CR>

autocmd BufWritePre * %s/\s\+$//e

set backspace=eol,start,indent
set whichwrap+=<,>,h,l
