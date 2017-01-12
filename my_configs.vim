colorscheme desert

""" vim-airline configuration
let g:airline_theme='badwolf'

let g:airline_powerline_fonts = 1
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_iminsert=0
let g:airline_inactive_collapse=1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0

let g:airline#extensions#whitespace#enabled = 1


""" FIXME
""" set EchoFunc to display in airline_section_c
call airline#parts#define('echofunc', {'function': 'EchoFuncGetStatusLine','accent': 'yellow',})
"let g:airline_section_c = airline#section#create(['%<', 'file', ' ', 'readonly', 'echofunc'])
let g:airline_section_c = airline#section#create(['echofunc', '%<'])
let g:EchoFuncShowOnStatus=1

""" Enable by default and set vim-gitgutter colors
let g:gitgutter_enabled=1
let g:gitgutter_sign_column_always = 1
highlight LineNr ctermbg=235
highlight SignColumn ctermbg=235
highlight GitGutterAdd ctermfg=2 ctermbg=235
highlight GitGutterChange ctermfg=3 ctermbg=235
highlight GitGutterChangeDelete ctermfg=3 ctermbg=235
highlight GitGutterDelete ctermfg=1 ctermbg=235


""" Yank Ring
map <leader>y :YRShow<cr>

""" MISC

" Paste toggle - when pasting something in, don't indent.
set pastetoggle=<F3>

" use modeline if defined in opened file
set modeline

" Remove indenting on empty lines
map <F2> :%s/\s*$//g<cr>:noh<cr>''

" Turn on WiLd menu
set wildmode=longest,list,full
set wildmenu

" Add default locations to path
set path+=.,~/src/demo,/usr/local/include,/usr/include

" allow Syntastic to search includes in our current "main" include build dir:
let g:syntastic_c_include_dirs = ['/home/wm/src/demo/build/prime-current-standalone/include/', '../include']
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_loc_list = 0

" Add CScope
source ~/.vim_runtime/vimrcs/cscope_maps.vim

" improve session management
set ssop-=options
set ssop-=blank

