" General
set updatetime=100                                  " Set update time to 100ms.

filetype on
filetype plugin on
filetype indent on

set wildmenu			                            " Enable menu at the bottom.
set ruler 			                                " Show the cursor position.
set showcmd			                                " Show current command.
set showmatch			                            " Show matching brackets.

set splitbelow
set splitright

set incsearch			                            " Show search results while writing.

set number			                                " Show line numbers.

set encoding=utf8		                            " Set UTF8 as default encoding.
set wrap			                                " Wrap lines.
set tabstop=4			                            " Insert 4 spaces for a tab.
set shiftwidth=4		                            " Number of spaces for identation.
set expandtab			                            " Use spaces for tabs.

" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'cloudhead/neovim-fuzzy'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'preservim/nerdcommenter'
Plug 'vim-python/python-syntax'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'sbdchd/neoformat'
Plug 'neomake/neomake'
Plug 'tmhedberg/SimpylFold'
Plug 'Konfekt/FastFold'

call plug#end()

let g:python_host_prog = '/Users/bernardocasaleiro/.config/nvim/venv/bin/python'
let g:python3_host_prog = '/Users/bernardocasaleiro/.config/nvim/venv/bin/python3'

let g:deoplete#enable_at_startup = 1                " Enable deoplete at startup.

let g:jedi#completions_enabled = 0                  " Disable autocompletion.
let g:jedi#use_splits_not_buffers = "right"         " Open the go-to function in split, not another buffer.

let g:python_highlight_all = 1                      " Enable all syntax highlighting.

let g:neoformat_basic_format_align = 1              " Enable neoformat alignment.
let g:neoformat_basic_format_retab = 1              " Enable neoformat tab to spaces conversion.
let g:neoformat_basic_format_trim = 1               " Enable neoformat trimmming of trailing whitespace.

let g:neomake_python_enabled_makers = ['pylint']    " Set pylint as the Python code checker.

" Theming
syntax enable

colorscheme vim-monokai-tasty
set background=dark
set cursorline			                            " Highlight current cursor line.

" Keys
let mapleader="\<SPACE>"	                        " Map LEADER key to space.

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

