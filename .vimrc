autocmd!
syntax on
set shiftwidth=4 softtabstop=4 expandtab autoindent
set number
set ignorecase
set mouse=a
map <ScrollWheelUp>     3<C-Y>
map <ScrollWheelDown>   3<C-E>
set showmatch
"set autowriteall
"set smartcase
set visualbell
" more natural split opening
set splitbelow
set splitright

" Use colors designed for a dark background
set background=dark

" Use a color scheme that works for dark colors
"colorscheme delek
colorscheme elflord
"colorscheme zellner

let mapleader = ","
let maplocalleader = "\\"

" Abbreviations and snippets -------------------------- {{{
iabbrev @@      j0ndy3r@gmail.com
iabbrev ccopy   Copyright 2023 Jon Dyer, all rights reserved.
iabbrev ssig    --<CR>Jon Dyer<CR>j0ndy3r@gmail.com
" End abbreviations }}}

" Handy shortcuts and remaps ------------------------------------ {{{
noremap <Enter> o<ESC>
noremap <S-Enter> O<ESC>
set pastetoggle=<F2>
" Move line down or up
noremap - ddp
noremap _ ddkP
" Delete line in insert mode
inoremap <C-d> <ESC>ddi
" Edit or source vimfile quickly
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
" Surround with double or single quotes
nnoremap <leader>" viw<ESC>a"<ESC>bi"<ESC>lel
nnoremap <leader>' viw<ESC>a'<ESC>bi'<ESC>lel
vnoremap <leader>" <ESC>`<i"<ESC>`>a"<ESC>
vnoremap <leader>' <ESC>`<i'<ESC>`>a'<ESC>
" Move to beginning or end of line
nnoremap H ^
nnoremap L $
" Fix for Colemak
nnoremap n j
nnoremap e k
nnoremap k n
nnoremap K N
vnoremap n j
vnoremap e k
vnoremap k n
vnoremap K N
" Exit insert using km
inoremap km <ESC>
vnoremap nm <ESC>
" Operators
onoremap p i(
onoremap in( :<c-u>normal! f(vi(<CR>
" ------------------ }}}

" Filetype settings ---------------------------------------------------- {{{
augroup filetype_cmds
    autocmd!
    autocmd BufNewFile,BufRead *.xhtml set ft=tt2html
    autocmd BufNewFile,BufRead */template/* set ft=tt2html
    autocmd BufNewFile,BufRead *.tt set ft=tt2html
    autocmd BufNewFile,BufRead *.scss set ft=css
    autocmd BufNewFile,BufRead *.yaml,*.yml,*.conf so ~/.vim/syntax/yaml.vim
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

set path=.,lib/**,conf/**,schema/**,www/**,template/**,cmp/**,data/**,,
au InsertLeave * set nopaste


" Fix autocomplete scanning
set complete=.,w,b,u


" Highlighting commands ---------------------- {{{
highlight ExtraWhitespace ctermbg=blue guibg=grey
augroup hicmds
    autocmd!
    autocmd ColorScheme * highlight ExtraWhitespace guibg=blue
    autocmd BufEnter * match ExtraWhitespace /\s\+$/
    autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
    autocmd InsertLeave * match ExtraWhiteSpace /\s\+$/
augroup END

highlight Search ctermbg=magenta ctermfg=grey
" }}}

" Status line and color column ------------------------------ {{{
set statusline=%{getcwd()}\ %m%=%F\ %l\,%c\ %p%%
set laststatus=2
hi StatusLine ctermbg=DarkCyan ctermfg=LightGray

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
" End status line & color column }}}
