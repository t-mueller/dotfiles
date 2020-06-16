" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'vim-airline/vim-airline'
"Plug 'ap/vim-buftabline'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Airline plugin
let g:airline#extensions#tabline#enabled = 1


set number
set cursorline
set incsearch
"set hlsearch
set scrolloff=5
set hidden
set wildmenu


"Cycling through listed buffers
"nnoremap <f1> :bn<CR>
"nnoremap <f2> :bp<CR>
"nnoremap <f4> :bd<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>


" ---------------------------------------------------------
"Highlight unwanted space
"http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/
au InsertEnter * match ExtraWhiteSpace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

