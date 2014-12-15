set nocompatible
filetype plugin indent on
syntax enable
set showcmd						" display incomplete commands
set autoindent
set nowrap
set number
set ruler
set cursorline
set ttyfast
set laststatus=2
set ts=4 sts=4 sw=4 expandtab
set backspace=indent,eol,start	" allow backspacing over everything in insert mode

" Make completion useful: show a navigable menu for tab completion
set wildmenu

" make /-style searches case-sensitive only if there is a capital letter in the search expression
set ignorecase
set smartcase

" Sane searching
set hlsearch					" Hilight search term
set showmatch					" Show matching brackets
set incsearch					" ... dynamically as they are typed

set confirm						" Ask before doing destructive changes with an unsaved buffer
set iskeyword+=_,$,@,%,#,-		" none of these should be word dividers, so make them not be

" Pull from keywords for completion in the current file, other buffers
" (closed or still open), and from the current tags file.
set complete=.,b,u,]

nmap <Tab> >>
nmap <BS> <<
vmap <Tab> >gv
vmap <BS> <gv

" Automatically reread files that have been changed externally
set autoread

" automatically insert a \v before any search string,
" so search uses normal regexes
nnoremap / /\v
vnoremap / /\v

" Only use one space after ., ? or ! with a join command
set nojoinspaces

let mapleader="\<Space>"
nnoremap <Leader><Space> :noh<CR>
nmap <Leader>v V

set noswapfile
set nobackup
set nowb

if has('persistent_undo')
    silent !mkdir ~/.vim/backups > /dev/null 2>&1
    set undodir=~/.vim/backups
    set undofile
endif