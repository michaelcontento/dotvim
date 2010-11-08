" ----------
" Pathogen
" ----------

" Loads modules from the bundle/ directory
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" ----------
" INDENT 
" ----------

" Set tab character amount
set tabstop=4

" Indent with for autoindent
set shiftwidth=4

" Turn tabs into spaces
set expandtab

" ----------
" SEARCHING
" ----------

" Search as i type
set incsearch 

" Higlight previous search pattern
set hlsearch

" Ignore case in search patterns
set ignorecase

" Override the 'ignorecase' option if the search pattern contains upper case characters.
set smartcase

" ----------
" OTHERS
" ----------

" Active the backspace
set backspace=2

" Show linenumbers
set number

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=3

" Turn off word wrapping
set wrap!

" Allow nice pasting
set paste
