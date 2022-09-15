" PLUGINS ---------------------------------------------------------------- {{{
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
" Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'chiel92/vim-autoformat'
Plugin 'itchyny/lightline.vim'
Plugin 'doums/darcula'
Plugin 'jparise/vim-graphql'
Plugin 'dense-analysis/ale'
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
call vundle#end()            " required
" }}}

set nocompatible              " be iMproved, required
let mapleader = ","
let g:syntastic_python_checkers = ['pylint']
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'filename': 'FilenameForLightline'
      \ }
      \ }

" Show full path of filename
function! FilenameForLightline()
    return expand('%')
endfunction

:highlight Cursorline cterm=bold ctermbg=black
filetype on                  " required
syntax on
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
colorscheme darcula
set backspace=indent,eol,start
set laststatus=2
set incsearch
set number
set relativenumber

" Indentation using spaces "
" tabstop:	width of tab character
" softtabstop:	fine tunes the amount of whitespace to be added
" shiftwidth:	determines the amount of whitespace to add in normal mode
" expandtab:	when on use space instead of tab
" textwidth:	text wrap width
" autoindent:	autoindent in new line
set tabstop	=4
set softtabstop	=4
set shiftwidth	=4
set expandtab
set autoindent
set cursorline

" MAPPINGS --------------------------------------------------------------- {{{
nmap <C-n> :NERDTreeToggle<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
noremap <leader>w :w<CR>
noremap <leader>q :q<CR>
noremap <leader>g :Git
map <leader><tab> :tabnext<CR>
"  }}}
