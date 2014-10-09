let g:closetag_html_style=1
let g:NERDTreeWinSize=50
let g:solarized_termcolors=16
let g:Powerline_symbols = 'fancy'

" ----------------------------------------------------------------------------
" Key mapping
" ----------------------------------------------------------------------------
"

" Don't use arrow keys
map <Up> <Nop>
map <Down> <Nop>
map <Left> <Nop>
map <Right> <Nop>
imap <Up> <Nop>
imap <Down> <Nop>
imap <Left> <Nop>
imap <Right> <Nop>

" Shortcuts
map \l :setlocal number!<CR>
map \o :set paste!<CR>
map <C-l> :w !php -l<CR>
map \q :nohlsearch<CR>
nnoremap <F5> :GundoToggle<CR>

" Commands
command NT NERDTree

"
" Vundle plugins
"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'airblade/vim-gitgutter'

source ~/.vim/plugins/comments.vim
source ~/.vim/plugins/closetag.vim
source ~/.vim/plugins/javascript.vim

"
" Set options
"

set nocompatible
set t_Co=256
set laststatus=2
set noeol
set binary
set eol
set mouse=a
set backspace=2
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set showmode
set cursorline
set cursorcolumn
set incsearch
set ignorecase
set smartcase
set hlsearch
set number
set background=light
set ruler
set undofile
set undodir=$HOME/.vim/.undo
set undolevels=1000
set undoreload=10000

" Show vertical bar at column widths depending on the language
autocmd FileType php setlocal textwidth=120 colorcolumn=+1
autocmd FileType python setlocal textwidth=79 colorcolumn=+1

autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

execute pathogen#infect()
syntax enable
colorscheme github
" Make the sign column (gutter) pretty "
highlight SignColumn ctermbg=None
" Two spaces instead of a tab in Ruby "
autocmd BufNewFile,BufRead *.rb set tabstop=2
autocmd BufNewFile,BufRead *.rb set shiftwidth=2
autocmd BufNewFile,BufRead *.haml set tabstop=2
autocmd BufNewFile,BufRead *.haml set shiftwidth=2
" 4 spaces for a tab in Python "
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
" Turn on spell check for TeX files "
autocmd BufNewFile,BufRead *.tex set spell
filetype off
filetype plugin on
filetype indent on
" Line numbers"

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
