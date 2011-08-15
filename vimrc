" Install additional scripts via vim-addon-manager
"set runtimepath+=~/.vim/vim-addons/vim-addon-manager
"call scriptmanager#Activate(['snipMate', 'PIV', 'SuperTab_continued.', 'delimitMate', 'MRU', 'taglist', 'fugitive', 'vimwiki', 'FuzzyFinder', 'The_NERD_tree'])

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

" Wrap text instead of being on one line
set lbr
    
" Disable all kinds of smartness for pasting
set pastetoggle=<F2>

" Enable mouse support
set mouse=a

" Some stuff for MacVim
set guioptions-=T
set guifont=Monaco:h14

" When vimrc is edited, reload it
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

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
"set statusline=%F%m%r%h%w%=%{fugitive#statusline()}\ (%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)
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

" Turn on "very magic" regex status by default for searches.
" :he /magic for more information
nnoremap / /\v
vnoremap / /\v

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

" Fast quit
cmap Q qall
cmap Q! qall!

" Stop using the arrow keys
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>

" And make j,k work
nnoremap j gj
nnoremap k gk

" Mac bindings for home/end
map <C-a> 0
map <C-e> g$
imap <C-a> <Esc>0i
imap <C-e> <Esc>g$i

" Easy buffer navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <c-Left> <C-w>h
map <c-Right> <C-w>l

" Configure PIV
let g:DisableAutoPHPFolding=1

" Configure NERDTree
let NERDTreeBookmarksFile=$HOME . "/.vim/NERDTreeBookmarks"
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=1

" Configure TagList
nmap <leader>r :TlistToggle<CR>
let Tlist_Use_Right_Window=1
let Tlist_Compact_Format=1
let Tlist_Exit_OnlyWindow=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Inc_Winwidth=0
let Tlist_Close_On_Select=1
let Tlist_Display_Prototype=0
let Tlist_Display_Tag_Scope=1

" Mapping for vimwiki index page
nmap <leader>W :VimwikiMakeDiaryNote<CR>
nmap <leader>w :VimwikiIndex<CR>

" Mappings for all file navigation plugins
nmap <leader>t :NERDTreeToggle<CR>
nmap <leader>y :FufFileWithCurrentBufferDir<CR>
nmap <leader>u :MRU<CR>
