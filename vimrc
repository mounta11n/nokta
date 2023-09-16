" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
"Plug 'tpope/vim-sensible'
"Plug 'junegunn/seoul256.vim'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
call plug#end()

" fix nerdtree session error
" set sessionoptions-=blank

" load in right order
autocmd VimEnter *
            \   if !argc()
            \ |   Startify
            \ |   NERDTree
            \ |   wincmd w
            \ | endif

" fix N debug
set sessionoptions-=blank
let g:NERDTreeNodeDelimiter="	"

" show line numbers
:set number

" set own keymapps
:nmap <C-f> :NERDTreeToggle<CR>
:imap <C-f> <ESC>:NERDTreeToggle<CR>
