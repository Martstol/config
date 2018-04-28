execute pathogen#infect()

" Set leader
let mapleader = " "
let g:mapleader = " "

" Set how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Fast saving
nmap <leader>w :w!<cr>

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

"Always show current position
set ruler

" add a tiny margin to the left
set foldcolumn=1

" Avoid garbled characters in Chinese language windows OS
let $LANG='en' 
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Create a buffer between the cursor and the bottom of the screen
set so=7

" Turn on wild menu
set wildmenu

" Color scheme
syntax on
colorscheme onedark
set background=dark

" Enable filetype plugins
filetype plugin indent on

" Set utf8 as the standard encoding
set encoding=utf8

" Use unix as the standard file type
set ffs=unix,dos,mac

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Turn off backups
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent

" Disable highlighting when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Improve moving between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Nerdtree
map <silent> <C-n> :NERDTreeToggle<CR>

" Always show the status line
set laststatus=2

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Gitgutter
let g:gitgutter_map_keys = 0
set updatetime=100

" Airline
let g:airline_powerline_fonts = 1

" Intero
augroup interoMaps
	au!

	" Automatically reload Intero on save
	au BufWritePost *.hs InteroReload

	au FileType haskell map <silent> <leader>t <Plug>InteroGenericType
	au FileType haskell map <silent> <leader>T <Plug>InteroType
augroup END

let g:intero_type_on_hover = 1