""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My custom vim configuration.
"
" Author: Mitchell Bosecke <mitchellbosecke@gmail.com>
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Misc Setup
set nocompatible
set encoding=utf-8

" Load filetype detection, plugins, and indentation
filetype plugin indent on

" Leader commands
let mapleader = ","


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User Interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Solarized theme (ITS JUST SO DAMN PRETTY)
syntax enable
set background=dark
colorscheme solarized

" show line numbers, ruler, and incomplete commands
set number
set ruler
set showcmd	 

" highlight cursor line
set cul

" File name completion
set wildmenu
set wildmode=list:longest,list:full


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TODO: customize this
"set laststatus=2
"set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase			" searches are case insensitive...
set smartcase			" ... unless they contain at least one capital letter
set hlsearch			" highlight matches
set incsearch			" incremental searching

" pressing ,<space> clears the search highlights
nmap <silent> <leader><space> :nohlsearch<CR> 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab, indent, and folding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" whitespace and tabs
set nowrap
set backspace=indent,eol,start
set smartindent	
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

" folding
set foldenable
set foldmethod=syntax
set foldlevel=1         " fold functions, not classes
let php_folding=1       " enable php folding
map <Leader>f zR<CR>    " open all
map <Leader>F zM<CR>    " close all


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving around, tabs, and buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" allow buffers with changes to still be hidden
set hidden

" easier navigation between split windows
nnoremap <c-j> <c-W>j
nnoremap <c-k> <c-W>k
nnoremap <c-h> <c-W>h
nnoremap <c-l> <c-W>l

" Make sure theres at least 6 lines of content before or after the line I'm
" currently editing
set scrolloff=6

" navigation between tabs
:map <UP> :tabnext<CR>
:map <LEFT> :bp<CR>
:map <RIGHT> :bn<CR>
:map <DOWN> :tabprev<CR>

" Open new tab
map <Leader>e :tabe .<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Insert Mode
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" jj will go to command mode 
imap jj <Esc>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Command Mode
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" paste mode
map <Leader>p :set paste<CR>
map <Leader>np :set nopaste<CR>

" insert a blank line with <leader>o and <leader>O
nnoremap <silent> <leader>o o<ESC>
nnoremap <silent> <leader>O O<ESC>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files, and Backups
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Check for file changes 
au CursorHold * checktime

" Turn backup off, since most stuff is in git anyway... right?!
set nobackup
set nowb
set noswapfile

" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PHP related (and twig)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 'make' checks for syntax errors
set makeprg=php\ -l\ %
set errorformat=%m\ in\ %f\ on\ line\ %l

" twig/pebble syntax and highlighting
au BufRead,BufNewFile *.twig set syntax=htmljinja
au BufRead,BufNewFile *.peb set syntax=htmljinja


" END 
