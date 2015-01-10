"############ VUNDLE CONFIG BEGIN #########
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'kien/ctrlp.vim'
Plugin 'elzr/vim-json'
Plugin 'tpope/vim-fugitive'
Plugin 'rking/ag.vim'
"Plugin 'vim-scripts/vim-auto-save'
Plugin 'bling/vim-airline'
Plugin 'vim-scripts/bufexplorer.zip'

filetype plugin indent on
"############# VUNDLE CONFIG END ##########

syntax enable
set background=light
set guifont=Anonymice\ Powerline:h19
if has('gui_running')
    colorscheme solarized
endif
set t_Co=256
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
highlight Search ctermbg=LightCyan guibg=LightCyan
highlight ColorColumn ctermbg=LightGreen guibg=LightGreen
call matchadd('ColorColumn', '\%81v', 100)

set number
set ruler
" Make completion useful: show a navigable menu for tab completion
set wildmenu
" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
" Disable temp and backup files
set wildignore+=*.swp,*~,._*
" Disable local cache files
set wildignore+=*/.bundle/*,*/.gradle/*,*/.vagrant/*

set cursorline
set ttyfast

" make /-style searches case-sensitive only if there is a capital letter in the search expression
set ignorecase
set smartcase

" Sane searching
set hlsearch                   " Highlight search term
set showmatch                  " Show matching brackets
set incsearch                  " ... dynamically as they are typed

set confirm                    " Ask before doing destructive changes with an unsaved buffer
set iskeyword+=_,$,@,%,#,-     " none of these should be word dividers, so make them not be

set laststatus=2
set ts=4 sts=4 sw=4 expandtab
set autoindent
set smartindent
set smarttab
set backspace=indent,eol,start " allow backspacing over everything in insert mode

" Automatically reread files that have been changed externally
set autoread

set hidden

set list
set listchars=trail:.,

" Pull from keywords for completion in the current file, other buffers
" (closed or still open), and from the current tags file.
set complete=.,b,u,]

nmap <Tab> >>
nmap <BS> <<
vmap <Tab> >gv
vmap <BS> <gv

" automatically insert a \v before any search string,
" so search uses normal regexes
nnoremap / /\v
vnoremap / /\v

let mapleader="\<Space>"
nnoremap <Leader>o :CtrlP<CR>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nmap <Leader>v V
nnoremap <Leader><Space> :noh<CR>
nnoremap ; :
map q: :q
" ==== NERD tree
" Open the project tree and expose current file in the nerdtree with Ctrl-\
nnoremap <silent> <Leader>nf :NERDTreeFind<CR>:vertical res 30<CR>
nmap <Leader>nt :NERDTreeToggle<CR>

au BufRead,BufNewFile Vagrantfile,RakeFile,*.rake  set filetype=ruby
au BufRead,BufNewFile *.groovy  set filetype=groovy
au BufRead,BufNewFile *.gradle set filetype=groovy
au BufRead,BufNewFile *.scss set ts=2 sts=2 sw=2
au BufRead,BufNewFile *.coffee set ts=2 sts=2 sw=2
au BufRead,BufNewFile *.haml set ts=2 sts=2 sw=2

let g:auto_save = 1

set foldmethod=indent
set foldnestmax=10
set foldenable
set foldlevel=1

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo')
    silent !mkdir ~/.vim/backups > /dev/null 2>&1
    set undodir=~/.vim/backups
    set undofile
endif

