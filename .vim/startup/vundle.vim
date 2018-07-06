filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Colors
"Plugin 'flazz/vim-colorschemes'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'chriskempson/base16-vim'
Plugin 'morhetz/gruvbox'
"Plugin 'crusoexia/vim-monokai'
"Plugin 'w0ng/vim-hybrid'

" Functionalities
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
Plugin 'easymotion/vim-easymotion'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-multiple-cursors'
Plugin 'kana/vim-arpeggio'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'tpope/vim-obsession'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'zhaocai/GoldenView.Vim'
Plugin 'valloric/MatchTagAlways'
Plugin 'Townk/vim-autoclose'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tmhedberg/matchit'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
Plugin 'editorconfig/editorconfig-vim'
"Plugin 'majutsushi/tagbar'
Plugin 'rking/ag.vim'
Plugin 'godlygeek/tabular'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'rizzatti/dash.vim'
Plugin 'tpope/vim-repeat'
Bundle 'git://github.com/csscomb/vim-csscomb.git'
"Plugin 'Yggdroot/indentLine' " Cause of some laggy scrolling and some visual bugs
"Plugin 'wakatime/vim-wakatime'

" Languages
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'othree/html5.vim'
Plugin 'moll/vim-node'
Plugin 'ap/vim-css-color'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'elzr/vim-json'
Plugin 'plasticboy/vim-markdown'
Plugin 'digitaltoad/vim-jade'
Plugin 'suan/vim-instant-markdown'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'mxw/vim-jsx'
Plugin 'leafgarland/typescript-vim'
Plugin 'wavded/vim-stylus'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

