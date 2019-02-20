" General
filetype on
filetype plugin on
filetype indent on

set wildmenu			            " Enable menu at the bottom.
set ruler 			                " Show the cursor position.
set showcmd			                " Show current command.
set showmatch			            " Show matching brackets.

set splitbelow
set splitright

set incsearch			            " Show search results while writing.

set number			                " Show line numbers.

set encoding=utf8		            " Set UTF8 as default encoding.
set wrap			                " Wrap lines.
set tabstop=4			            " Insert 4 spaces for a tab.
set shiftwidth=4		            " Number of spaces for identation.
set expandtab			            " Use spaces for tabs.

" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'cloudhead/neovim-fuzzy'
Plug 'patstockwell/vim-monokai-tasty'

call plug#end()

" Theming
syntax enable

colorscheme vim-monokai-tasty
set background=dark
set cursorline			            " Highlight current cursor line.

" Keys
let mapleader="\<SPACE>"	        " Map LEADER key to space.

" Easy navigation between splits.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Map ESC to deselect previous search.
nnoremap <ESC> :noh<RETURN><ESC>

" Map Ctrl-P to open fuzzy search.
nnoremap <C-P> :FuzzyOpen<CR>

" Terminal Keys
tnoremap <LEADER><ESC> <C-\><C-n>

