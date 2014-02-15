set nocompatible
syntax enable
set number
set ruler
set wildmenu
set laststatus=2
set ts=4 sts=4 sw=4 expandtab

filetype off                  " detect the type of file
filetype indent on            " Enable filetype-specific indenting
filetype plugin on            " Enable filetype-specific plugin

set confirm                   " Ask before doing destructive changes with an unsaved buffer
set fileformats=unix,dos,mac  " support all three, in this order
set viminfo+=!                " make sure it can save viminfo
set iskeyword+=_,$,@,%,#,-    " none of these should be word dividers, so make them not be
set title                     " show title in xterm

" Make completion useful: show a navigable menu for tab completion
set wildmenu

" Yank and paste with the system clipboard
" set clipboard=unnamed

" Pull from keywords for completion in the current file, other buffers (closed or still
" open), and from the current tags file.
set complete=.,b,u,]

set background=light

" Sane searching
set hlsearch                  " Hilight search term
set showmatch                 " Show matching brackets
set incsearch                 " ... dynamically as they are typed

" make /-style searches case-sensitive only if there is a capital letter in the search expression
set ignorecase
set smartcase

" automatically insert a \v before any search string, so search uses
" normal regexes
nnoremap / /\v
vnoremap / /\v

" Automatically reread files that have been changed externally
set autoread

" Only use one space after ., ? or ! with a join command
set nojoinspaces

" https://github.com/cypher/dotfiles/blob/master/vimrc