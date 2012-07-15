set nocompatible
" Close braces and brackets automatically "
" Directory navigator "
source /home/chris/.vim/plugins/nerdtree.vim
" For fast commenting "
source /home/chris/.vim/plugins/NERD_commenter.vim
" 256 colours "
set t_Co=256
" vim solarized colour scheme "
let g:solarized_termcolors=256
syntax enable
" dark version of solarized "
set background=dark
colorscheme solarized
call pathogen#infect()
set smartindent
set tabstop=4
set shiftwidth=4
"set expandtab"
set modifiable
" When pasting source code, pressing F2 will maintain all the indentation "
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
" Line numbers"
set number
" Autocompletion "
filetype plugin on
set ofu=syntaxcomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

let php_sql_query=1                                                                                        
let php_htmlInStrings=1

" Higlight screen after 80 chars - need vim v7.3+ "
" set textwidth=80 "
" set colorcolumn=+1 "
" hi ColorColumn guibg=#2d2d2d ctermbg=246 "
