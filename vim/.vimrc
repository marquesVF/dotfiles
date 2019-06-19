set hidden
set number
set relativenumber
set mouse=a
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
set cursorline
set colorcolumn=80
set ai " Autoident
set si
set wrap
set lbr
set tw=500
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set showmatch
set foldmethod=indent " Enable folding
set foldlevel=99
set autoread

colo desert
syntax on

" Enable folding with the spacebar
nnoremap <space> za

" Show docstrings
let g:SimpylFold_docstring_preview=1

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" For quick comments
filetype plugin on

" Plugins
" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Typescript related

" Productive
Plug 'scrooloose/nerdtree' " File explorer
Plug 'jistr/vim-nerdtree-tabs'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive' " Something related to git
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'} " Status bar <3
Plug 'w0rp/ale' " For syntax checking
Plug 'scrooloose/nerdcommenter'
Plug 'alvan/vim-closetag'
Plug 'https://github.com/wesQ3/vim-windowswap'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'https://github.com/Valloric/YouCompleteMe'
Plug 'https://github.com/SirVer/ultisnips'
Plug 'alvan/vim-closetag'
Plug 'dracula/vim'
Plug 'tpope/vim-rails'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
" Initialize plugin system
call plug#end()

"" Plugin related config


" NerdTree related config
let NERDTreeIgnore=['\.pyc$', '\~$', '\node_modules$'] "ignore files in NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Enable folding with the spacebar
nnoremap <space> za

" CTRLP
" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$\|build$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

let g:ale_fixers = {
\    'javascript': ['eslint'],
\    'typescript': ['eslint'],
\    'vue': ['eslint'],
\    'scss': ['prettier'],
\    'html': ['prettier']
\}


" Personal maps
let mapleader = ","
noremap ,c ddO
noremap ,vim :vsplit $MYVIMRC<cr>
noremap ,im :TsuImport
