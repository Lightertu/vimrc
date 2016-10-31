" Rui Tu's basic configuration
"
" Key Mapping
imap jk <Esc>
imap kj <Esc>
imap JK <Esc>
imap KJ <Esc>
nmap <silent> <A-up>:wincmd k<CR>
nmap <silent> <A-up>:wincmd j<CR>
nmap <silent> <A-up>:wincmd h<CR>
nmap <silent> <A-up>:wincmd l<CR>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
inoremap <BS> <Nop>
inoremap <Del> <Nop>

" set absolute and relative lines
set relativenumber 
set number


" Color setting in different terminal
set t_Co=256

" font setting for windows
if has("gui_running")
    if has("gui_win32")
        set guifont=Consolas:h11:cANSI
    endif
endif

" set colorscheme
" colorscheme solarized-dark
" colorscheme onedark

"highlight Normal ctermfg=grey ctermbg=black
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

" Syntastic setting
" let g:syntastic_mode_map = { 'mode': 'passive' }
"let g:syntastic_cpp_compiler_options = "-std=c++11 -Wall -Wextra -Wpedantic"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_c_check_header = 1
let g:syntastic_c_compiler = 'clang'
let g:syntastic_cpp_compiler = 'clang++'

" YCM setting
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_server_use_vim_stdout = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_show_diagnostics_ui = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d<Plug>PeepOpenython<Plug>PeepOpenerl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }


" overwrite 
map <leader>e :e! ~/.vim_runtime/my_configs/my_configs.vim<cr>
autocmd! bufwritepost vimrc source ~/.vim_runtime/my_configs/my_configs.vim
