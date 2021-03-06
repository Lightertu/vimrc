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
nnoremap <C-k> :tabnext<CR>

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

"highlight Normal ctermfg=grey ctermbg=black
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

" Syntastic setting
" let g:syntastic_mode_map = { 'mode': 'passive' }

let g:syntastic_c_compiler = 'clang'
let g:syntastic_cpp_compiler = 'clang++'

" YCM setting
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_server_use_vim_stdout = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_show_diagnostics_ui = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
                                            

" overwrite 
map <leader>e :e! ~/.vim_runtime/my_configs/my_configs.vim<cr>
autocmd! bufwritepost vimrc source ~/.vim_runtime/my_configs/my_configs.vim

try
source ~/.vim_runtime/my_configs/bundlerc.vim
catch
endtry
