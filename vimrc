set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Code syntax checker
Plugin 'vim-syntastic/syntastic'

" Python Flake8 checker
" Used with syntastic
Plugin 'nvie/vim-flake8'

"Auto indent Python
Plugin 'vim-scripts/indentpython.vim'

"CtrlP fuzzy file search
Plugin 'kien/ctrlp.vim'

"Line indicator in Vim that shows what mode you're in
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" File navigation on left side of Vim
Plugin 'preservim/nerdtree'

" Use 'gc' to comment/uncomment
Plugin 'tpope/vim-commentary'

" Tab completion
Plugin 'ervandew/supertab'

" Jump to specific words
Plugin 'easymotion/vim-easymotion'

" Search
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

" pipenv shell to get Django autocomplete
Plugin 'ycm-core/YouCompleteMe'

" Better Python syntax highlighting
Plugin 'hdima/python-syntax'

" Disabled on 07/18/2020 Now using ":Ag" for search
" :SideSearch to search
" Plugin 'ddrscott/vim-side-search'

" Disabled on 07/18/2020 Now using ":Ag" for search
" Plugin 'mileszs/ack.vim'

" All Plugins must be added before the following line
call vundle#end()            " required


" GENERAL ----------

" Vim doesn't let you backspace in certain places
" This makes backspace work like normal programs
" https://vi.stackexchange.com/questions/2162/why-doesnt-the-backspace-key-work-in-insert-mode
set backspace=indent,eol,start

"Press jk at same time to escape insert mode
inoremap jk <esc>
vnoremap jk <esc> 

"always show line numbers
:set number
:set relativenumber

" Navigate between splits 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Set leader key to spacebar
let mapleader=" "

" Press "tn" in normal mode to open a new tab
noremap tn :tabnew<CR>

" Switch between tabs quickly
" Go to tab by number
"noremap <leader>1 1gt
"noremap <leader>2 2gt
"noremap <leader>3 3gt
"noremap <leader>4 4gt
"noremap <leader>5 5gt
"noremap <leader>6 6gt
"noremap <leader>7 7gt
"noremap <leader>8 8gt
"noremap <leader>9 9gt
"noremap <leader>0 :tablast<cr>

" Detect filetypes, plugins, and file indentation
filetype plugin indent on    " required

" Code completion
set omnifunc=syntaxcomplete#Complete

" YCM Shortcuts
" Pressing "gd" goes to definition of function (opens in a new tab)
nnoremap gd :tab split \| YcmCompleter GoToDefinition<CR>


" PYTHON SYNTAX ----------

"Enables hdima/python-syntax Python syntax highlighting
let python_highlight_all=1
syntax on

" Syntastic recommended default settings
" https://github.com/vim-syntastic/syntastic#3-recommended-settings
let g:syntastic_python_checkers = ['flake8', 'pylint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0


" NERDTREE ----------

" Checks if NERDTree has started,
" otherwise there's an error message on vim startup
set rtp+=~/.vim/bundle/nerdtree

"Starts NERDTree when VIM starts
autocmd VimEnter * NERDTree

"Focuses on editor window after NERDTree starts
autocmd VimEnter * wincmd p 

"Closes NERDTree if all editor windows are closed
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"QUESTIONABLE LINES---------------------------

""Search
"autocmd StdinReadPre * let s:std_in=1

"set encoding=utf-8

"nnoremap <C-Left> :tabprevious<CR>
"nnoremap <C-Right> :tabnext<CR>

" Jedi commands for renaming?
" let g:jedi#use_tabs_not_buffers = 1
"let g:jedi#use_splits_not_buffers = "right"

" Set marks to save in a file upon reopen.  Doesn't work though
" :set viminfo='1000,f1

" Enter in normal mode adds empty lines
" nmap <S-Enter> O<Esc>
" nmap <CR> o<Esc>

" Disabled on 07/18/2020 Now using ":Ag" for search
"" SideSearch current word and return to original window
"nnoremap <Leader>ss :SideSearch <C-r><C-w><CR> | wincmd p

"" Create a shorter `SS` command
"command! -complete=file -nargs=+ SS execute 'SideSearch <args>'

"" or command abbreviation
"cabbrev SS SideSearch

" Disabled on 07/18/2020 Now using ":Ag" for search
"Enables Ag to be used with ack?
"if executable('ag')
"  let g:ackprg = 'ag --vimgrep'
"endif
