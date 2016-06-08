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

Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'sjl/gundo.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
"Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/CycleColor'
Plugin 'christoomey/vim-tmux-navigator'
"Plugin 'SirVer/ultisnips'
Plugin 'vim-ruby/vim-ruby'

" All plugins must be added brefore the following line
call vundle#end()         " required
filetype plugin indent on " required

