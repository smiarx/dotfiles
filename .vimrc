set nocompatible
syntax on

filetype plugin indent on

set ruler
set number
set showcmd
set wildmenu

set display=truncate
set scrolloff=5

set tabstop=4
set expandtab
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
let base16colorspace=256
source ~/.vim/colorscheme.vim
hi Normal ctermbg=NONE

let mapleader = ","
let maplocalleader = ","

" netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 20



" TIDAL
autocmd FileType tidal setlocal commentstring=--\ %s
autocmd FileType tidal setlocal dictionary+=~/projects/supercollider/LiveCoding/.tidal_dict
autocmd FileType tidal setlocal complete+=k
let g:tidal_default_config = {"socket_name": "default", "target_pane": "livecoding:1"}
au Filetype tidal command-buffer -nargs=0 TidalStart call system("livecoding-term tidal &")


"let g:sclangTerm = 'urxvtc -e'
let g:sclangTerm = 'livecoding-term'
let g:sclangPipeApp = 'sclang'
let g:scFlash = 1

au Filetype supercollider nnoremap <buffer> <C-P> :call SClangHardstop()<CR>
"au Filetype supercollider inoremap <leader> :call SCfindArgs()<CR>a
au Filetype supercollider nnoremap <leader>a :call SCfindArgs()<CR>
au Filetype supercollider vnoremap <leader>a :call SCfindArgsFromSelection()<CR>

au Filetype supercollider nnoremap <buffer> <c-e> :call SClang_block()<CR>
au Filetype supercollider inoremap <buffer> <c-e> :call SClang_block()<CR>a
au Filetype supercollider vnoremap <buffer> <c-e> :call SClang_send()<CR>

au Filetype supercollider vnoremap <buffer> <c-space> :call SClang_line()<CR>
au Filetype supercollider nnoremap <buffer> <c-space> :call SClang_line()<CR>
au Filetype supercollider inoremap <buffer> <c-space> :call SClang_line()<CR>a


" debug
packadd termdebug
let termdebugger="arm-none-eabi-gdb"
