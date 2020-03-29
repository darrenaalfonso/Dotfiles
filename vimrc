set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'vim-syntastic/syntastic'

Plugin 'nvie/vim-flake8'

"Auto indent Python
Plugin 'vim-scripts/indentpython.vim'

Plugin 'kien/ctrlp.vim'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

"Plugin 'preservim/nerdcommenter'

Plugin 'preservim/nerdtree'

" Plugin 'davidhalter/jedi-vim'

Plugin 'tpope/vim-commentary'

Plugin 'ervandew/supertab'

Plugin 'easymotion/vim-easymotion'

Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

Plugin 'ddrscott/vim-side-search'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

filetype plugin on
set omnifunc=syntaxcomplete#Complete

"NCM2 Attempted install
"Plugin 'ncm2/ncm2'
"Plugin 'roxma/nvim-yarp'

" Plugin 'ncm2/ncm2-jedi'

" enable ncm2 for all buffers
"autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
"set completeopt=noinsert,menuone,noselect

"call vundle#begin()
"" NOTE: you need to install completion sources to get completions. Check
"" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
"Plugin 'ncm2/ncm2-bufword'
"Plugin 'ncm2/ncm2-path'

"call vundle#end()





"split navigations
nnoremap <C-J> <C-W><C-H>
nnoremap <C-K> <C-W><C-L>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"always show line numbers
:set number
:set relativenumber

"Python indentation
"autocmd BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix

"Underline bad whitespace Python
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

"Press jk at same time to escape insert mode
inoremap jk <esc>
inoremap kj <esc>
vnoremap kj <esc>
vnoremap jk <esc> 

"Python syntax highlighting
let python_highlight_all=1
syntax on

"Search
autocmd StdinReadPre * let s:std_in=1

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

"Proper backspace
set backspace=indent,eol,start

" let g:jedi#use_tabs_not_buffers = 1
let g:jedi#use_splits_not_buffers = "right"

let mapleader=" "

:set viminfo='1000,f1
