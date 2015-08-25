"" handle plugins -----------------------------------------------------------{{{
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
set nocompatible " it's 2015... forget being compatible with good ol' vi"
set encoding=utf-8
set relativenumber
set scrolloff=5 " show 5 lines around cursor at top/bottom
set cursorline
set ruler
" }}}

"" easier split-navigation --------------------------------------------------{{{
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" }}}

" tabs, spaces, wrapping ----------------------------------------------------{{{
set nowrap                    " no virtual wrap
set textwidth=80 wrapmargin=0 " do not insert newlines
" }}}

" themes, colors ------------------------------------------------------------{{{
"
" for a list of available colors, check:
" https://upload.wikimedia.org/wikipedia/en/1/15/Xterm_256color_chart.svg

" make characters beyond 81st line stand out
"highlight OverLength ctermbg=grey ctermfg=white guibg=#592929
"match OverLength /\%82v\+/
" set t_Co=256
" colorscheme 0x7A69_dark
syntax enable
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
" the following trick to have different background beyond column 81 is from
" http://blog.hanschen.org/2012/10/24/different-background-color-in-vim-past-80-columns/
execute "set colorcolumn=" . join(range(81,335), ',')
highlight ColorColumn ctermbg=236
" }}}

" folding -------------------------------------------------------------------{{{
set foldmethod=marker
" }}}

" undo files ----------------------------------------------------------------{{{
set undofile "have undo files to be able to undo between sessions
set undodir=~/.vim/undo//
" }}}

" plugin configuration ------------------------------------------------------{{{
" toggle Gundo (tree-undo)
nnoremap <F5> :GundoToggle<CR>
" toggle NERDTree (file-browse)
nnoremap <F2> :NERDTreeToggle<CR>

" vim-airline configuration
set laststatus=2
let g:airline_powerline_fonts=1
" }}}

" filetype specific settings ------------------------------------------------{{{
autocmd FileType cpp source ~/.vim/cpp.vim
" }}}
