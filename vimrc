" Install additional scripts via vim-addon-manager
set runtimepath+=~/.vim/vim-addons/vim-addon-manager
call scriptmanager#Activate(['vimwiki', 'FuzzyFinder', 'The_NERD_tree'])

" This must be first, because it changes other options as side effect
set nocompatible

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

" Enable mouse support
set mouse=a

" Remove the toolbar in vim GUIs
set guioptions-=T

" Basic options
syntax on
set backspace=indent,eol,start
set encoding=utf-8
set hidden
set laststatus=2
set scrolloff=3
set showcmd
set showmode
set ttyfast
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
let g:mapleader = ","

" Make Y not dumb
nnoremap Y y$

" Searching
nmap <leader><space> :noh<cr>
set gdefault
set hlsearch
set ignorecase
set incsearch
set showmatch
set smartcase

" Fuck you, manual key
nnoremap K <nop>

" ; is useless 
nnoremap ; :

" Save when losing focus
au FocusLost * :wa

" Sudo write
cmap w!! w !sudo tee % >/dev/null

" Easier linewise reselection
nmap <leader>v V`]

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

map <c-Left> <C-w>h
map <c-Right> <C-w>l

" Mapping for vimwiki index page
nmap <leader>W :VimwikiMakeDiaryNote<CR>
nmap <leader>w :VimwikiIndex<CR>

" Mappings for all file navigation plugins
nmap <leader>t :NERDTreeToggle<CR>
nmap <leader>y :FufFile<CR>
