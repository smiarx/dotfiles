set nocompatible
syntax on

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'altercation/vim-colors-solarized'
	Plugin 'Valloric/YouCompleteMe.git'

	Plugin 'supercollider/scvim'

	" python
	Plugin 'heavenshell/vim-pydocstring'
call vundle#end()
filetype plugin indent on

set ruler
set number
set showcmd
set wildmenu

set display=truncate
set scrolloff=5

set tabstop=4
set noexpandtab
set shiftwidth=4

set lazyredraw

set hlsearch
set incsearch
set showmatch
set ignorecase
set smartcase

set showbreak=↪\ 
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨

set background=dark
colorscheme solarized

let mapleader = ","

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_autoclose_preview_window_after_completion=1
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:sclangTerm = "urxvtc -e"
