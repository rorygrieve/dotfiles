set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ack.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'scrooloose/nerdtree'
Plugin 'romainl/flattened'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'vim-ruby/vim-ruby'

let g:ctrlp_max_files=20000
set path+=lib/**,spec/**,app/**

call vundle#end()            " required
filetype plugin indent on    " required

syntax on 
set nocompatible
set autoindent
set ruler
set number
set hlsearch
set incsearch
set nowrap
set ignorecase
set smartcase
set noswapfile
set showcmd
set wildmode=list:longest,full
set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right
set backspace=indent,eol,start
runtime macros/matchit.vim

" http://vimcasts.org/episodes/tabs-and-spaces/
set ts=2 sts=2 sw=2 expandtab
set background=light
colorscheme solarized
":color flattened_light
"set t_Co=256                        " force vim to use 256 colors
"let g:solarized_termcolors=256      " use solarized 256 fallback



" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
