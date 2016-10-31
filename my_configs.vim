" Rui Tu's basic configuration
" Esc key remapping
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

" c++11 linter support
let g:syntastic_cpp_compiler_options = "-std=c++11 -Wall -Wextra -Wpedantic"

" Disable youcomeplete me at the begining
" ycm off
" nnoremap <leader>Y :let g:ycm_auto_trigger=0<CR>                
" ycm on
nnoremap <leader>y :let g:ycm_auto_trigger=1<CR>                

" disable DELTE key
inoremap <BS> <Nop>
inoremap <Del> <Nop>

" disable syntax linting
" let g:syntastic_mode_map = { 'mode': 'passive' }

map <leader>e :e! ~/.vim_runtime/my_configs/my_configs.vim<cr>
autocmd! bufwritepost vimrc source ~/.vim_runtime/my_configs/my_configs.vim
