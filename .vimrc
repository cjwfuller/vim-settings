let g:closetag_html_style=1
let jshint_options_file = '~/.vim/jshint_options.js'
let g:NERDTreeWinSize=50

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
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:solarized_termcolors=16
let g:Powerline_symbols = 'fancy'
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
syntax enable
set background=light
colorscheme github
" Make the sign column (gutter) pretty "
highlight SignColumn ctermbg=None
" Two spaces instead of a tab in Ruby "
:command NT NERDTree
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
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/
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
map <C-l> :w !php -l<CR>
set showmode
set cursorline
set cursorcolumn
" Highlight as you search
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap \q :nohlsearch<CR>
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

set statusline =%#identifier#
set statusline+=[%t]    "tail of the filename
set statusline+=%*

""display a warning if file encoding isnt utf-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

set statusline+=%h      "help file flag
set statusline+=%y      "filetype

""modified flag
set statusline+=%#identifier#
set statusline+=%m
set statusline+=%*

""display a warning if &paste is set
set statusline+=%#error#
set statusline+=%{&paste?'[paste]':''}
set statusline+=%*

set statusline+=%=      "left/right separator
set statusline+=%{StatuslineCurrentHighlight()}\ \ "current highlight
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2

"recalculate the trailing whitespace warning when idle, and after saving
autocmd cursorhold,bufwritepost * unlet! b:statusline_trailing_space_warning

"return '[\s]' if trailing white space is detected
"return '' otherwise
function! StatuslineTrailingSpaceWarning()
    if !exists("b:statusline_trailing_space_warning")

        if !&modifiable
            let b:statusline_trailing_space_warning = ''
            return b:statusline_trailing_space_warning
        endif

        if search('\s\+$', 'nw') != 0
            let b:statusline_trailing_space_warning = '[\s]'
        else
            let b:statusline_trailing_space_warning = ''
        endif
    endif
    return b:statusline_trailing_space_warning
endfunction

"return the syntax highlight group under the cursor ''
function! StatuslineCurrentHighlight()
    let name = synIDattr(synID(line('.'),col('.'),1),'name')
    if name == ''
        return ''
    else
        return '[' . name . ']'
    endif
endfunction
