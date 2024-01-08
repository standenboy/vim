" PLUGINS

call plug#begin('~/.vim/plugged')
	Plug 'dense-analysis/ale'
	Plug 'preservim/nerdtree'
	Plug 'arcticicestudio/nord-vim'
call plug#end()

" END PLUGINS

" STARTUP

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set relativenumber

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Show partial command you type in the last line of the screen.
set showcmd

" Use highlighting when doing a search.
set hlsearch

" Scrolling

set scrolloff=999

" Colors
colorscheme nord

" END STARTUP

" KEYS

" Cycle window
nnoremap <C-H> <C-w>h
nnoremap <C-L> <C-w>w

" Open NerdTree
nnoremap <S-s> :NERDTreeToggle<CR>

" Motion in insert mode
inoremap <C-H> <C-o>h
inoremap <C-J> <C-o>j
inoremap <C-K> <C-o>k
inoremap <C-L> <C-o>l

inoremap <C-W> <C-o>w
inoremap <C-B> <C-o>b

inoremap <C-X> <C-o>x

" END KEYS

" STATUS LINE

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2 " END STATUS LINE
