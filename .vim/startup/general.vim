" Use vim instead of vi
set nocompatible

" File
filetype on " detect a file type
filetype plugin on
filetype indent on " load a specific indent file based on a file type

" General
syntax enable
set autoindent
set smartindent
set number " show line number
set relativenumber
set cursorline " highlight current line
set ruler         " show the cursor position all the time
set clipboard=unnamed
set history=1000
set hidden
set autoread
set wildmenu " visual autocomplete for command line
set nostartofline " prevent cursor jumps back to the beginning of the line when switching buffers
set ttyfast " fast redraw the screen
set lazyredraw " buffer screen updates instead of updating all the time
set fileformat=unix " force reading files as unix
set diffopt+=iwhite " Ignore whitespace when doing git diff


" Errors
set noerrorbells
set visualbell
set t_vb=
set tm=500

" Tab
set tabstop=2 " number of spaces to use when reading <TAB> character
set softtabstop=2 " number of spaces to use when hitting <TAB> or <BS>
set shiftwidth=2 " number of spaced to use for indentation
set expandtab " turning <TAB> into <SPACE>

" Spell
set spell
set spelllang=en_us

" Encoding
set fileencoding=utf-8
set encoding=utf-8

" Searching
set smartcase " use case sensitive whenever the we type any capital letter
set ignorecase " case insensitive by default
set gdefault " searching globally by default
set hlsearch " highlight matches
set incsearch " search as characters are entered
set showmatch " highlight matching parenthesis character

" Split
set splitright " split horizontal pane on the right-side
set splitbelow " split vertical pane below

" Fold
set foldmethod=indent   " fold based on indent
set foldnestmax=10      " deepest fold is 10 levels
set nofoldenable        " dont fold when opening a file
set foldlevel=1

" Centralize backups, swapfiles and undo history
"set backupdir=~/.vim/backups
"set directory=~/.vim/swaps
"if exists("&undodir")
	"set undodir=~/.vim/undo
"endif
set noswapfile

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Wrap
set wrap "turn on line wrapping
"set wrapmargin=8 " wrap lines when coming within n characters from side
set linebreak
set breakindent
set showbreak=↪

" Buffer
set switchbuf=useopen " if a buffer is already opened in one of the windows, Vim will jump to that window

autocmd BufNewFile,BufWinEnter * setlocal formatoptions-=o
"set formatoptions = crql

" Fix syntax disappeared
autocmd BufEnter * doautocmd filetypedetect BufRead "%"

" Redraw the screen
autocmd FocusGained * :redraw!

" Format
au BufRead,BufNewFile .{eslintrc,babelrc} setf json

" Tmux
if $TMUX == ''
  set clipboard+=unnamed
endif

" Disable warnings from python3
if has('python3')
  silent! python3 1
endif

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
