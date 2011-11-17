" Install additional scripts via vim-addon-manager
set runtimepath+=~/.vim/vim-addons/vim-addon-manager
call vam#ActivateAddons(['surround', 'SearchComplete', 'tcomment', 'hammer.vim', 'Solarized', 'SuperTab_continued.', 'delimitMate', 'The_NERD_tree', 'FuzzyFinder'])

" Fix arrow keys in screen/tmux sessions
if match($TERM, "screen") != -1
    set term=xterm
    map OA <Up>
    map OB <Down>
    map OC <Right>
    map OD <Left>
    map [A <C-Up>
    map [B <C-Down>
    map [C <C-Right>
    map [D <C-Left>
endif

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

" Get the numpad working
:imap <Esc>Oq 1
:imap <Esc>Or 2
:imap <Esc>Os 3
:imap <Esc>Ot 4
:imap <Esc>Ou 5
:imap <Esc>Ov 6
:imap <Esc>Ow 7
:imap <Esc>Ox 8
:imap <Esc>Oy 9
:imap <Esc>Op 0
:imap <Esc>On .
:imap <Esc>OQ /
:imap <Esc>OR *
:imap <Esc>Ol +
:imap <Esc>OS -

" Fix the backspace
vnoremap <BS> d
noremap <BS> dh

" Wrap text instead of being on one line
set lbr
    
" Disable all kinds of smartness for pasting
set pastetoggle=<F2>

" Enable mouse support
set mouse=a

" Some stuff for MacVim
set guioptions-=T
set guifont=Monaco:h14

" Folding
set foldmethod=indent
nnoremap <silent> <Space> @=(foldlevel('.')?'za':'l')<CR>
vnoremap <Space> zf
autocmd BufRead,BufNewFile * normal zR

" Edit vimrc in new tag
nnoremap <Leader>ev :tabedit $MYVIMRC<CR>

" When vimrc is edited, reload it
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Theme options
syntax on
set background=dark
let g:solarized_termtrans=1
colorscheme solarized
call togglebg#map("<F5>")

" Basic options
set backspace=indent,eol,start
set encoding=utf-8
set hidden
set laststatus=0
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
set title                
set visualbell           

" change the mapleader from \ to ,
let mapleader=","
let g:mapleader=","

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
set highlight=lub

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

" And make j,k work
nnoremap j gj
nnoremap k gk

" Center display line after searches
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" Mac bindings for home/end
map <C-a> 0
map <C-e> g$
imap <C-a> <Esc>0i
imap <C-e> <Esc>g$i

" Easy buffer navigation
map <C-h> <C-w>h
map <C-Left> <C-w>h
map <C-j> <C-w>j
map <C-Down> <C-w>j
map <C-k> <C-w>k
map <C-Up> <C-w>k
map <C-l> <C-w>l
map <C-Right> <C-w>l

" Easy tab navigation
map <S-h> :tabnext<CR>
map <S-Left> :tabnext<CR>
map <S-l> :tabprevious<CR>
map <S-Right> :tabprevious<CR>

" Configure NERDTree
let NERDTreeBookmarksFile=$HOME . '/.vim/NERDTreeBookmarks'
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=1

" Mappings for all file navigation plugins
nmap <leader>t :NERDTreeToggle<CR>
nmap <leader>y :FufFileWithCurrentBufferDir<CR>

" Make TComment accessible
map <leader>c <leader>__
map <leader>C <leader>_p

" Mapping for hammer.vim
map <leader>p :Hammer<CR>
