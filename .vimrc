let g:closetag_html_style=1
let g:NERDTreeWinSize=50
let g:solarized_termcolors=16
let g:airline#extensions#whitespace#mixed_indent_algo=1

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

" Tab/shift-tab should indent/unindent
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Shortcuts
map \l :setlocal number!<CR>
map \o :set paste!<CR>
map \nm :set mouse=<CR>
map \m :set mouse=a<CR>
map <C-l> :w !php -l<CR>
map \q :nohlsearch<CR>
nnoremap ; :
nnoremap <Leader>rtw :%s/\s\+$//e<CR>

" Commands
map <C-n> :NERDTreeToggle<CR>
map <C-g> :GundoToggle<CR>

" delimitMate "
let delimitMate_nesting_quotes = ['"','`']
au FileType python let b:delimitMate_expand_inside_quotes = 1

"
" Vundle plugins
"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'airblade/vim-gitgutter'
Plugin 'xsbeats/vim-blade'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

Bundle 'cakebaker/scss-syntax.vim'

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
if has('mouse')
	set mouse=a
endif
set backspace=2
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set showmode
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
set history=50
set autoindent
set showcmd
set spell spelllang=en_gb

" only do when compiled with support for autocommands.
if has("autocmd")
	" When editing a file, always jump to the last known cursor position.
	" Don't do it when the position is invalid or when inside an event handler
	" (happens when dropping a file on gvim).
	" Also don't do it when the mark is in the first line, that is the default
	" position when opening a file.
	autocmd BufReadPost *
		\ if line("'\"") > 1 && line("'\"") <= line("$") |
		\   exe "normal! g`\"" |
		\ endif
	augroup END

	autocmd FileType php setlocal textwidth=120 colorcolumn=+1
	autocmd FileType python setlocal textwidth=100 colorcolumn=+1 expandtab tabstop=4 shiftwidth=4

	autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
	autocmd InsertLeave * if pumvisible() == 0|pclose|endif

	autocmd WinEnter * setlocal cursorline
	autocmd WinLeave * setlocal nocursorline

	autocmd BufNewFile,BufRead git-rebase-todo set nospell
endif

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

execute pathogen#infect()
syntax enable
colorscheme atom-dark-256
" Make the sign column (gutter) pretty "
highlight SignColumn ctermbg=None
highlight ColorColumn term=underline cterm=NONE ctermbg=59 ctermfg=fg gui=NONE guibg=#293739 guifg=fg
filetype on
filetype plugin on
filetype indent on
