source plugins.vim
source environment.vim
source keybinds.vim

" use space as leader key
let mapleader = "\<Space>"

" ways to exit insert mode
imap jk <Esc>
imap <S-CR> <Esc>

" set some leader shortcuts
nnoremap <Leader>w :w<CR>
nnoremap <Leader>e :Explore<CR>

command! Q q " bind :Q to :q (common typo)

set pastetoggle=<Insert> " toggle autocommenting etc when pasting from websites

" quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" " copy & paste to system clipboard with <Space>y and <Space>p
" vmap <Leader>y "+y
" vmap <Leader>d "+d
" nmap <Leader>p "+p
" nmap <Leader>P "+P
" vmap <Leader>p "+p
" vmap <Leader>P "+P

" press leader twice for visual mode
nmap <Leader><Leader> V
