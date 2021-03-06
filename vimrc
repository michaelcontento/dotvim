" Install additional scripts via vim-addon-manager
set runtimepath+=~/.vim/vim-addons/vim-addon-manager
call vam#ActivateAddons(['surround', 'SearchComplete', 'tcomment', 'hammer.vim', 'Solarized', 'SuperTab_continued.', 'delimitMate', 'FuzzyFinder'])

" TODO: Change vam to vundle => https://github.com/gmarik/vundle
" TODO: Add vim-pasta plugin => https://github.com/sickill/vim-pasta

" Automatically reload changes if detected
set autoread

" Writes on make/shell commands
set autowrite

" Auto insert the comment leader after hitting 'o' / 'O' in Normal mode
set fo+=o

" This must be first, because it changes other options as side effect
set nocompatible

" Split line (opposite to S-J joining line) 
nnoremap <silent> <C-J> gEa<CR><ESC>ew 

" Hide buffers instead of closing
set hidden

" Display the 80 columns marker
set colorcolumn=80

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

" Highlight the current line
set cul

" Some stuff for MacVim
set guioptions-=T
set guifont=Monaco:h14

" Folding
set foldmethod=indent
nnoremap <silent> <Space> @=(foldlevel('.')?'za':'l')<CR>
vnoremap <Space> zf
autocmd BufRead,BufNewFile * normal zR

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

" I really like 80 columns
set textwidth=80
set formatoptions=tcrql
    " t - autowrap to textwidth
    " c - autowrap comments to textwidth
    " r - autoinsert comment leader with <Enter>
    " q - allow formatting of comments with :gq
    " l - don't format already long lines

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
imap <C-a> <Esc>0i
imap <C-e> <Esc>g$i
map <C-a> 0
map <C-e> g$

" Introduct new keycodes to vim for <alt-arrows>
set <F13>=f
map <F13> <M-Right>
map! <F13> <M-Right>

set <F14>=b
map <F14> <M-Left>
map! <F14> <M-Left>

set <F15>=[1;10C
map <F15> <S-M-Right>
map! <F15> <S-M-Right>

set <F16>=[1;10D
map <F16> <S-M-Left>
map! <F16> <S-M-Left>

set <F17>=[1;10A
map <F17> <S-M-Up>
map! <F17> <S-M-Up>

set <F18>=[1;10B
map <F18> <S-M-Down>
map! <F18> <S-M-Down>

" Jump words with alt-arrow (osx style)
map <M-Left> b
map <M-Right> w
imap <M-Left> <Esc>bi
imap <M-Right> <Esc><Right>wi

" Enable command movement
" TODO: Fix commad-up and command-down
map <D-Left> <C-a>
map <D-Right> <C-e>

" Buffer creation and movement
map <Leader>- :split<CR>
map <Leader>\| :vsplit<CR>
map <Leader>\ :vsplit<CR>
map <Leader><Left> <C-w><Left>
map <Leader><Right> <C-w><Right>
map <Leader><Down> <C-w><Down>
map <Leader><Up> <C-w><Up>

" Buffer movement with <leader> is consitent with tmux but somehow "painful" to
" use and therefore this alternative :)
map <M-S-Left> <Leader><Left>
map <M-S-Right> <Leader><Right>
map <M-S-Up> <Leader><Up>
map <M-S-Down> <Leader><Down>

" Tab creation and movement
map <S-t> :tabnew<CR>
map <S-Left> :tabnext<CR>
map <S-Right> :tabprev<CR>

" Edit vimrc in new tab
nnoremap <Leader>ev :split $MYVIMRC<CR>

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Toggle screen wrapping of long lines 
nnoremap <Leader>w :set invwrap<Bar>set wrap?<CR>

" Mappings for all file navigation plugins
nmap <leader>y :FufFileWithCurrentBufferDir<CR>

" Make TComment accessible
map <leader>c <leader>__
map <leader>C <leader>_p

" Mapping for hammer.vim
map <leader>p :Hammer<CR>
