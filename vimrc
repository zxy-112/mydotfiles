
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'mattn/ctrlp.vim'
Plugin 'puremourning/YouCompleteMe'
Plugin 'preservim/nerdtree'
Plugin 'yianwillis/vimcdoc'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
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

"""""""""""""""""""""""""""""""""""""""""""""
""""""""""""appearance"""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""

syntax on

" do not show in one line
set wrap
set linebreak
set showbreak=>/

" Show matching braces when text indicator is over them
set showmatch
set matchtime=15

" Show cmd, ie, when type f, there will be letter f shown at bottom
set showcmd

" Show line numbers
set number
set relativenumber

" show space tab trail in my own way
set listchars=space:·,tab:>-,trail:▲

" Show listchars
set list

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2
set ruler

" Highlight current line and column
set cursorline
" set cursorcolumn

" set color of space
highlight BeginSpace guifg=Brown ctermfg=Brown
highlight MyTabSpace guifg=darkgrey ctermfg=darkgrey
match MyTabSpace / /
match BeginSpace /^ \+/

"""""""""""""""""""""""""""""""""""""""""""""
""""""""""""behavior"""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""

" Make tabs as wide as four spaces
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Make backspace behave more reasonably
set backspace=indent,eol,start

" Make search more convenient
set ignorecase
set smartcase

" Enable search when typing
set incsearch
" highlight search results
set hlsearch

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support
set mouse+=a

" fold the code according to indent
set foldmethod=indent
set nofoldenable

" autoload .vimrc when saving .vimrc
" autocmd BufWritePost $MYVIMRC source $MYVIMRC

" backup
set backup
set backupext=.bak

"no modeline
set nomodeline

" timeoutlen
set timeout
set timeoutlen=1000

"""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""map some useful key"""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""

" change the leader key
let mapleader=" "

" remap Q
map Q gq

" keep visual mode after indent
vnoremap < <gv
vnoremap > >gv

" save and quit command
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" swap ; and :
" nnoremap : ;
" nnoremap ; :

" swap ' and `
nnoremap ' `
nnoremap ` '

" undo
nnoremap U <C-r>

" yark
nnoremap Y y$

" jump
" nnoremap n nzz
" nnoremap N Nzz
nnoremap g* g*zz
nnoremap <leader>b ^
nnoremap <leader>e $

" switch pane
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>n <C-w>w
nnoremap <leader>s :split<CR>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>o :only<CR>

" page move
nnoremap <C-n> <C-n>zz
nnoremap <C-u> <C-u>zz

" notation
nnoremap <leader>i <S-i># <Esc>j

" add () and {} around word
nnoremap <leader>p i(<Esc>ea)<Esc>
nnoremap <leader>c i{<Esc>ea)<Esc>

" command mode map
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" line move when wrapped
map <Up> gk
map <Down> gj

" auto () [] {} ""
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap " ""<Esc>i

" for ycm
imap <silent> <C-l> <Plug>(YCMToggleSignatureHelp)
nnoremap <leader>gt :YcmCompleter GoTo<CR>

" for NEDRTree
nnoremap <C-n> :NERDTree<CR>

"""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""some abbreviation"""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""

noreabbrev #b ###########################WORDS############################
