" This must be first, because it changes other options as side effect
set nocompatible

" Loads modules from the bundle/ directory
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

" Hide buffers instead of closing
set hidden

" Indent, tabs and spaces
set autoindent
set copyindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Wrap text instead of being on one line
set lbr

" Disable all kinds of smartness for pasting
set pastetoggle=<F2>

" Basic options
set backspace=indent,eol,start
set encoding=utf-8
set hidden
set laststatus=2
"set relativenumber
set scrolloff=3
set showcmd
set showmode
set ttyfast
"set undofile
"set undoreload=10000
set wildmenu
set wildmode=list:longest

" Backup and undo
set history=1000         
set nobackup
set noswapfile
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class

" Status, title and numbers
set noerrorbells         
set number
set ruler
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)
set title                
set visualbell           

" change the mapleader from \ to ,
let mapleader=","

" Make Y not dumb
nnoremap Y y$

" Searching
map <leader><space> :noh<cr>
nmap <tab> %
nnoremap / /\v
runtime macros/matchit.vim
set gdefault
set hlsearch
set ignorecase
set incsearch
set showmatch
set smartcase
vmap <tab> %
vnoremap / /\v

" Fuck you, manual key
nnoremap K <nop>

" ; is useless 
nnoremap ; :

" Sudo to write
cmap w!! w !sudo tee % >/dev/null

" Save when losing focus
au FocusLost * :wa

" Easier linewise reselection
map <leader>v V`]

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Stop using the arrow keys
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>

" And make j,k work
nnoremap j gj
nnoremap k gk

" Easy buffer navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <leader>w <C-w>v<C-w>l
