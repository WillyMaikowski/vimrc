set background=dark
set nobackup
set nowb
set noswapfile
set nowrap
set undofile
set undodir=~/.vim/undodir

syntax enable
set expandtab
set smartindent
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number

"highlight BadWhitespaceAndTabs ctermbg=blue guibg=blue guifg=red
"match BadWhitespaceAndTabs /^\t\+/
"match BadWhitespaceAndTabs /\s\+$/

set ignorecase
set encoding=UTF-8
set fileencoding=UTF-8
language en_US.utf8

set pastetoggle=<F10>
colorscheme gruvbox
hi Normal ctermbg=none
set laststatus=2
set ruler

set wildmenu
set wildignore=*.o,*~,*.pyc
if has( 'win16' ) || has( 'win32' )
	set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
	set wildignore+=.git\*,.hg\*,.svn\*
endif

set hlsearch
set incsearch
set smartcase
set history=700
set showmatch
set mat=2
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

if match($TERM, "screen")!=-1
	set term=xterm
endif

map <space> /

if has("user_commands")
	command! -bang -nargs=? -complete=file E e<bang> <args>
	command! -bang -nargs=? -complete=file W w<bang> <args>
	command! -bang -nargs=? -complete=file Wq wq<bang> <args>
	command! -bang -nargs=? -complete=file WQ wq<bang> <args>
	command! -bang Wa wa<bang>
	command! -bang WA wa<bang>
	command! -bang Q q<bang>
	command! -bang QA qa<bang>
	command! -bang Qa qa<bang>
endif

let g:lightline = { 'colorscheme': 'wombat' }
let python_highlight_all = 1
