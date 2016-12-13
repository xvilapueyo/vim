" This must be first, because it changes other options as side effect
set nocompatible

" Load Plugins using Vundle plugin
so ~/.vim/.plugins
filetype plugin indent on 

" Do not connect to X server for clipboard (1s loadtime!!)
" http://stackoverflow.com/questions/14635295/vim-takes-a-very-long-time-to-start-up
set clipboard=exclude:.*

" change the mapleader from \ to ,
let mapleader=","

" Quickly edit/reload the vimrc file
" This effectively maps the ,ev and ,sv keys to edit/reload .vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" It hides buffers instead of closing them. This means that you can have unwritten changes to a file and open a new file using :e, without being forced to write or undo your changes first. Also, undo buffers and marks are preserved while the buffer is open
set hidden

" most basic settings
set nowrap        " don't wrap lines
set tabstop=2     " a tab is 2 spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

" Tabmode full (double Tab for a list of options)
set wildmode=longest,list,full
set wildmenu

" Buffer related stuff
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

" Unset backups
set nobackup
" set noswapfile

" Use paste mode to prevent auto-indent errors:
set pastetoggle=<F2>

" enable mouse
set mouse=a

" Clear search buffer with ,/ (eliminates highlights from last search)
nmap <silent> ,/ :nohlsearch<CR>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Set default theme
syntax enable
"set background=dark
"colorscheme ir_black

" Set font in gvim
if has('gui_running')
  set guifont=Meslo\ LG\ M\ DZ\ 9
endif

" Enable Omnicomplete
" + enhancements from http://vim.wikia.com/wiki/VimTip1386
"set omnifunc=syntaxcomplete#Complete
"set completeopt=longest,menuone
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
"  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
"  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
" open omni completion menu closing previous if open and opening new menu
" without changing the text
"inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
"	\ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
" open user completion menu closing previous if open and opening new menu
" without changing the text
"inoremap <expr> <S-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
"	\ '<C-x><C-u><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'


" AIRLINE
" enable bufferline integration
" let g:airline#extensions#bufferline#enabled = 1
" enable fugitive integration
"let g:airline#extensions#branch#enabled = 1
" enable/disable enhanced tabline.
"let g:airline#extensions#tabline#enabled = 0
" configure the minimum number of buffers needed to show the tabline. >
"let g:airline#extensions#tabline#buffer_min_count = 0

" CRTLP
"set runtimepath^=~/.vim/bundle/ctrlp.vim
