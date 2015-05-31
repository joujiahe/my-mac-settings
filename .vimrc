" ==================================================
"           Vundle Init
" ==================================================
set nocompatible    " be iMproved, required
filetype off        " Vundle bug, required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" ==================================================
"           Vundle Plugins
" ==================================================
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" ==================================================
"           Vundle Plugin Examples
" ==================================================
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

Plugin 'tpope/vim-rails'
Plugin 'pangloss/vim-javascript'
Plugin 'moll/vim-node'
Plugin 'jnwhiteh/vim-golang'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'digitaltoad/vim-jade'
Plugin 'slim-template/vim-slim'
Plugin 'elzr/vim-json'
Plugin 'alpaca-tc/berkshelf.vim'
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ==================================================
"           Vundle Plugin Configurations
" ==================================================
" Plugin 'scrooloose/nerdtree'
nnoremap <silent> <F5> :NERDTreeTabsToggle<CR>

" Plugin 'jistr/vim-nerdtree-tabs'
"let g:nerdtree_tabs_open_on_console_startup=1

" Plugin 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1
"let g:airline_theme = 'powerlineish'

" Plugin 'Shougo/neocomplcache.vim'
let g:neocomplcache_enable_at_startup = 1

" Plugin ctrlp
let g:ctrlp_working_path_mode='rw'

" Plugin 'altercation/vim-colors-solarized'
syntax enable
set background=dark
colorscheme solarized

" ==================================================
"           Vim Configurations
" ==================================================
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
noremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

autocmd! bufwritepost .vimrc source %

set nu
set ruler
set colorcolumn=80
highlight colorcolumn ctermbg=0
set clipboard=unnamed  " Copy cross vim instance
"set showcmd           " Show (partial) command in status line.
set showmatch          " Show matching brackets.
"set ignorecase        " Do case insensitive matching
"set smartcase         " Do smart case matching
set hlsearch           " Highlight search
set incsearch          " Incremental search
"set autowrite         " Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
set encoding=utf-8
