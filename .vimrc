set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Bundle 'Valloric/YouCompleteMe'
" Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdcommenter'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'alvan/vim-closetag'
Plugin 'dracula/vim'
Plugin 'tpope/vim-rails'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'mileszs/ack.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'joukevandermaas/vim-ember-hbs'
Plugin 'jiangmiao/auto-pairs'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'myusuf3/numbers.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'


" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Configuration related things
set splitbelow
set splitright

syntax on
set encoding=utf-8
let python_highlight_all=1

set expandtab
set smarttab

set shiftwidth=2
set tabstop=2
set colorcolumn=80
set cursorline

set lbr
set tw=500

set ai
set si
set wrap

set magic

set ruler
set cmdheight=2
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set showmatch
set encoding=utf-8

set number

" Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Enable folding
set foldmethod=indent
set foldlevel=99
set autoread

" NerdTree related config
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Enable folding with the spacebar
nnoremap <space> za

" YouCompleteMe related config
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>n 'scrooloose/syntastic'

" Show docstrings
let g:SimpylFold_docstring_preview=1

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" For quick comments
filetype plugin on

"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h
    "\ set tabstop=2
    "\ set softtabstop=2
    "\ set shiftwidth=2
    "\ set textwidth=79
    "\ set expandtab
    "\ set autoindent
    "\ set fileformat=unix

"au BufNewFile *.js,*.html,*.css
    "\ set tabstop=2
    "\ set softtabstop=2
    "\ set shiftwidth=2

" Set colorscheme
colorscheme dracula
set background=dark

 " HTML stuff
 " filenames like *.xml, *.html, *.xhtml, ...
" Then after you press <kbd>&gt;</kbd> in these files, this plugin will try to close the current tag.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non closing tags self closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" integer value [0|1]
" This will make the list of non closing tags case sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

" Trying to solve the tag closing issue
autocmd FileType html 
set omnifunc=htmlcomplete#CompleteTags

" -- Snippet plugin related configuration
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Toggle between relative and absolute numbering
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>
