""" vim-airline configuration
let g:airline_theme='badwolf'

let g:airline_powerline_fonts = 1
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_iminsert=0
let g:airline_inactive_collapse=1

let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#whitespace#enabled = 1

""" Yank Ring
map <leader>y :YRShow<cr>

""" MISC

" Paste toggle - when pasting something in, don't indent.
set pastetoggle=<F3>

" Remove indenting on empty lines
map <F2> :%s/\s*$//g<cr>:noh<cr>''

" Turn on WiLd menu
set wildmode=longest,list,full
set wildmenu

" Add default locations to path

set path+=.,~/src/demo,/usr/local/include,/usr/include
