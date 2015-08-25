"
" Vundle configuration
"
set nocompatible
filetype off

" let Vundle manage Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
filetype plugin indent on
Plugin 'gmarik/Vundle.vim'

" NerdTree
Plugin 'scrooloose/nerdtree'

" Gundo
Plugin 'sjl/gundo.vim'

" vim-fugitive for git
Plugin 'tpope/vim-fugitive'

" Vim colorschemes
Plugin 'flazz/vim-colorschemes'

" CycleColor
Plugin 'vim-scripts/CycleColor'

" All plugins must be added brefore the following line
call vundle#end()         " required
filetype plugin indent on " required

