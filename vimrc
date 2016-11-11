" testing
let g:Powerline_symbols='unicode'
let g:airline_powerline_fonts=1

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set splitbelow
set splitright

"split navigations
let g:BASH_Ctrl_j = 'off'
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za
let g:SimpylFold_docstring_preview=1

" python tuning
au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4 
au BufNewFile,BufRead *.py set shiftwidth=4 
au BufNewFile,BufRead *.py set textwidth=79 
au BufNewFile,BufRead *.py set expandtab 
au BufNewFile,BufRead *.py set autoindent 
au BufNewFile,BufRead *.py set fileformat=unix
set encoding=utf-8
let g:ycm_autoclose_preview_window_after_completion=1
let python_highlight_all=1
syntax on
set nu
set backspace=indent,eol,start

" eye candy
set background=dark
colorscheme lucius

" shortcuts
let mapleader=" "
map <leader>n :NERDTree<ENTER>
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>e :exec '!python' shellescape(@%, 1)<cr>

