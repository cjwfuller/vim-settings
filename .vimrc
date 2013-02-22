let g:closetag_html_style=1 
source ~/.vim/plugins/comments.vim
source ~/.vim/plugins/closetag.vim 
set nocompatible
set t_Co=256
set laststatus=2
let g:solarized_termcolors=16
let g:Powerline_symbols = 'fancy'
call pathogen#infect() 
call pathogen#runtime_append_all_bundles()
syntax enable
" dark version of solarized "
set background=dark
colorscheme solarized
"set smartindent
set tabstop=4
set shiftwidth=4
" Spaces, not tabs "
set expandtab
set modifiable
" When pasting source code, pressing F2 will maintain all the indentation "
"nnoremap <F2> :set invpaste paste?<CR>
"set pastetoggle=<F2>
"inoremap jj <Esc>
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
filetype on
filetype plugin on
filetype indent on
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
" Line numbers"
set number
" Higlight screen after 80 chars - need vim v7.3+ "
set textwidth=132
if version >= 730
    set colorcolumn=+1
endif
" Stops me using arrow keys "
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
imap <Up> <Nop>
imap <Down> <Nop>
imap <Left> <Nop>
imap <Right> <Nop>
nmap \l :setlocal number!<CR>
nmap \o :set paste!<CR>
set showmode
set cursorline
set cursorcolumn
" Highlight as you search
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap \q :nohlsearch<CR>
