" Forget being compatible with good ol' vi"
set nocompatible " it's 2015

" handle plugins ------------------------------------------------------------{{{
source ~/.vim/bundles.vim
" }}}

" navigate the vim-way. no arrow-keys ---------------------------------------{{{
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
" }}}

" some basic options --------------------------------------------------------{{{
set encoding=utf-8
set relativenumber
set scrolloff=5 " show 5 lines around cursor at top/bottom
set cursorline
set ruler
set undofile " have undo for files between vim-sessions
" }}}

"" easier split-navigation --------------------------------------------------{{{
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" }}}

" tabs, spaces, wrapping ----------------------------------------------------{{{
set nowrap
" make 81st line stand out
highlight ColorColumn ctermbg=red
call matchadd('Colorcolumn', '\%82v', 100)
" set textwidth=80
" set colorcolumn=+1
" }}}

" folding -------------------------------------------------------------------{{{
set foldmethod=marker
" }}}

" plugin configuration ------------------------------------------------------{{{
" toggle Gundo (tree-undo)
nnoremap <F5> :GundoToggle<CR>
" toggle NERDTree (file-browse)
nnoremap <F4> :NERDTreeToggle<CR>
" }}}

" vim-airline configuration
set laststatus=2
let g:airline_powerline_fonts=1

