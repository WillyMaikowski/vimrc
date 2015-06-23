set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'ap/vim-css-color'
Plugin 'Shutnik/jshint2.vim'
Plugin 'hhvm/vim-hack'

call vundle#end()
filetype plugin indent on

set history=700
set autoread
set so=7
set wildmenu
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
  set wildignore+=.git\*,.hg\*,.svn\*
endif
set ruler
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set showmatch
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set foldcolumn=1
syntax enable
try
  colorscheme gruvbox
catch
endtry

if has("gui_running")
  set guioptions-=T
  set guioptions-=e
  set guitablabel=%M\ %t
endif

set encoding=utf8
set ffs=unix,dos,mac
set nobackup
set nowb
set noswapfile
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set lbr
set tw=500
map <space> /
map <c-space> ?
set viminfo^=%
set laststatus=2
set nowrap
set t_Co=256

set background=dark
hi Normal ctermbg=none

let g:lightline = { 'colorscheme': 'wombat' }
let g:user_emmet_settings = { 'php' : {'extends' : 'html','filters' : 'c'}, 'xml' : {'extends' : 'html'}, 'haml' : {'extends' : 'html'} }
