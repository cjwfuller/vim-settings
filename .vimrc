let g:closetag_html_style=1
let jshint_options_file = '~/.vim/jshint_options.js'
let g:NERDTreeWinSize=50

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
set nocompatible
set t_Co=256
set laststatus=2
set noeol
set binary
set eol
set mouse=a
set backspace=2
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:solarized_termcolors=16
let g:Powerline_symbols = 'fancy'
execute pathogen#infect()
syntax enable
set background=light
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
set number
set textwidth=132
if version >= 730
    set colorcolumn=+1
endif
" Vim on OSX seems to not show the ruler by default "
set ruler
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

set showmode
set cursorline
set cursorcolumn
" Highlight as you search
set incsearch
set ignorecase
set smartcase
set hlsearch
" Persistent undo - only works in later version of vim
if version >= 730
    " Save undo's after file closes "
    set undofile
    " where to save undo histories "
    set undodir=$HOME/.vim/undo
    " how many undos "
    set undolevels=1000
    " number of lines to save for undo "
    set undoreload=10000
endif
