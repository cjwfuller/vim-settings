let g:closetag_html_style=1 
source ~/.vim/plugins/comments.vim
source ~/.vim/plugins/closetag.vim 
set nocompatible
set t_Co=256
set laststatus=2
let g:solarized_termcolors=256
let g:Powerline_symbols = 'fancy'
call pathogen#infect() 
call pathogen#runtime_append_all_bundles()
syntax enable
" Dark version of solarized
set background=dark
colorscheme solarized
set smartindent
set tabstop=4
set shiftwidth=4
" Spaces, not tabs
set expandtab
set modifiable
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
filetype on
filetype plugin on
filetype indent on
" Line numbers by default "
set number
" Highlight screen after 132 chars - need vim v7.3+
set textwidth=132
if version >= 730
    set colorcolumn=+1
endif
" Stops me using arrow keys in any mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
imap <Up> <Nop>
imap <Down> <Nop>
imap <Left> <Nop>
imap <Right> <Nop>
" Let backslash be a utility key
" \l will show/hide line numbers
nmap \l :setlocal number!<CR>
" \o will enable/disable paste mode
nmap \o :set paste!<CR>
set showmode
set cursorline
set cursorcolumn
