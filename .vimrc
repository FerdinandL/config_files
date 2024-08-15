" solves issues with working directory being 'unkown', which breaks Vundle installs, but might cause other issues?
cd ~

set nocompatible " be iMproved, required
filetype off     " required for vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
" When 1st time using Vundle, run :VundleInstall in vim
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'morhetz/gruvbox'

call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" Put your non-Plugin stuff after this line

syntax on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" If cursor is placed on `foo`, will generate command :%s/\<foo\>/
" Complete with bar/gc for search and replace
" <Leader> is \
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" Theme
set background=dark
colorscheme gruvbox
" completely black background
hi Normal guibg=black ctermbg=black

set cursorline
