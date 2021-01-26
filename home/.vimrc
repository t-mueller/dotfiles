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
"set cursorline
set incsearch
"set hlsearch
" Press F4 to toggle highlighting on/off, and show current value.
:noremap <F5> :set hlsearch! hlsearch?<CR>
set scrolloff=5
set hidden
set wildmenu

set tabstop=4
set shiftwidth=4
set expandtab

"Cycling through listed buffers
"nnoremap <f1> :bn<CR>
"nnoremap <f2> :bp<CR>
"nnoremap <f4> :bd<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>


"" Toggle between .h and .cpp with F4.
function! ToggleBetweenHeaderAndSourceFile()
  let bufname = bufname("%")
  let ext = fnamemodify(bufname, ":e")
  if ext == "h"
    let ext = "c"
  elseif ext == "c"
    let ext = "h"
  else
    return
  endif
  let bufname_new = fnamemodify(bufname, ":r") . "." . ext
  let bufname_alt = bufname("#")
  if bufname_new == bufname_alt
    execute ":e#"
  else
    execute ":e " . bufname_new
  endif
endfunction
map <silent> <F4> :call ToggleBetweenHeaderAndSourceFile()<CR>


" ---------------------------------------------------------
"Highlight unwanted space
"http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/
au InsertEnter * match ExtraWhiteSpace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

