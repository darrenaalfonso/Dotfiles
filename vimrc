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

Plugin 'preservim/nerdtree'

" 'gc' to comment/uncomment
Plugin 'tpope/vim-commentary'

Plugin 'ervandew/supertab'

Plugin 'easymotion/vim-easymotion'

Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

" :SideSearch to search
Plugin 'ddrscott/vim-side-search'

" pipenv shell to get Django autocomplete
Plugin 'ycm-core/YouCompleteMe'

Plugin 'mileszs/ack.vim'

Plugin 'hdima/python-syntax'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

filetype plugin on
set omnifunc=syntaxcomplete#Complete

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"always show line numbers
:set number
:set relativenumber

"Python indentation
" autocmd BufNewFile,BufRead *.py
"     \ set tabstop=4
"     \ set softtabstop=4
"     \ set shiftwidth=4
"     \ set textwidth=79
"     \ set expandtab
"     \ set autoindent
"     \ set fileformat=unix

"Underline bad whitespace Python
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

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

filetype on                 " try to detect filetypes
filetype plugin indent on   " enable loading indent file for filetype

" Enter adds empty lines
" nmap <S-Enter> O<Esc>
" nmap <CR> o<Esc>

" YCM Shortcuts
nnoremap gd :tab split \| YcmCompleter GoToDefinition<CR>

" SideSearch current word and return to original window
nnoremap <Leader>ss :SideSearch <C-r><C-w><CR> | wincmd p

" Create an shorter `SS` command
command! -complete=file -nargs=+ SS execute 'SideSearch <args>'

" or command abbreviation
cabbrev SS SideSearch

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Switch between tabs quickly
" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" Python syntax highlighting
let python_highlight_all = 1

" Syntastic settings
let g:syntastic_python_checkers = ['flake8', 'pylint']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
