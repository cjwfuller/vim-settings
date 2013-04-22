let g:closetag_html_style=1 
source ~/.vim/plugins/comments.vim
source ~/.vim/plugins/closetag.vim 
source ~/.vim/plugins/javascript.vim 
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
" Make the sign column (gutter) pretty "
highlight SignColumn ctermbg=None
set tabstop=4
set shiftwidth=4
" Spaces, not tabs "
set expandtab
set modifiable
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
" Turn on spell check for TeX files "
autocmd BufNewFile,BufRead *.tex set spell
filetype on
filetype plugin on
filetype indent on
" Line numbers"
set number
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
" gcw        - capitalize word (from cursor position to end of word)
" gcW        - capitalize WORD (from cursor position to end of WORD)
" gciw       - capitalize inner word (from start to end)
" gciW       - capitalize inner WORD (from start to end)
" gcis       - capitalize inner sentence
" gc$        - capitalize until end of line (from cursor postition)
" gcgc       - capitalize whole line (from start to end)
" gcc        - capitalize whole line
" {Visual}gc - capitalize highlighted text
if (&tildeop)
  nmap gcw guw~l
  nmap gcW guW~l
  nmap gciw guiw~l
  nmap gciW guiW~l
  nmap gcis guis~l
  nmap gc$ gu$~l
  nmap gcgc guu~l
  nmap gcc guu~l
  vmap gc gu~l
else
  nmap gcw guw~h
  nmap gcW guW~h
  nmap gciw guiw~h
  nmap gciW guiW~h
  nmap gcis guis~h
  nmap gc$ gu$~h
  nmap gcgc guu~h
  nmap gcc guu~h
  vmap gc gu~h
endif
