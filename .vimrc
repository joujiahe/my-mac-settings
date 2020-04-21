let mapleader=";"
" ==================================================
"           Vundle Init
" ==================================================
set nocompatible    " be iMproved, required
set backspace=2
filetype off        " Vundle bug, required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" ==================================================
"           Plugins
" ==================================================
call plug#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plug 'gmarik/Vundle.vim'

" ==================================================
"           Vundle Plugin Examples
" ==================================================
" plugin on GitHub repo
"Plug 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plug 'L9'
" Git plugin not hosted on GitHub
"Plug 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plug 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plug 'user/L9', {'name': 'newL9'}

Plug 'tpope/vim-rails'
Plug 'pangloss/vim-javascript'
Plug 'moll/vim-node'
Plug 'jnwhiteh/vim-golang'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
"Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'Shougo/neocomplcache.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'digitaltoad/vim-jade'
Plug 'slim-template/vim-slim'
Plug 'elzr/vim-json'
Plug 'alpaca-tc/berkshelf.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'majutsushi/tagbar'
Plug 'editorconfig/editorconfig-vim'
Plug 'wavded/vim-stylus'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'

" All of your Plugins must be added before the following line
call plug#end()            " required
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
" Plug 'scrooloose/nerdtree'
nnoremap <silent> <leader>5 :NERDTreeTabsToggle<CR>

" Plug 'jistr/vim-nerdtree-tabs'
"let g:nerdtree_tabs_open_on_console_startup=1

" Plug 'bling/vim-airline'
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline_powerline_fonts = 1
"let g:airline_theme = 'powerlineish'

" Plug 'Shougo/neocomplcache.vim'
let g:neocomplcache_enable_at_startup = 1

" Plugin ctrlp
let g:ctrlp_working_path_mode='rw'

" Plug 'altercation/vim-colors-solarized'
syntax enable
"set background=dark
"colorscheme solarized

" Plug 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup=0
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" Plug 'majutsushi/tagbar'
let tagbar_right=1
nnoremap <Leader>tr :TagbarToggle<CR> 
let tagbar_width=32 
let g:tagbar_compact=1

" Plug 'kchmck/vim-coffee-script'
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

" Plug 'junegunn/fzf.vim'
:nmap <c-p> :Files<CR>

" ==================================================
"           Vim Configurations
" ==================================================
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
noremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

autocmd! bufwritepost .vimrc source %

syntax on
set nu
set ruler
set colorcolumn=80
set nowrap
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
set cursorline         " Highlight cure line
"set cursorcolumn
set expandtab          " Indent settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set foldmethod=indent " Code Block Fold
"set foldmethod=syntax
set nofoldenable
set laststatus=2
