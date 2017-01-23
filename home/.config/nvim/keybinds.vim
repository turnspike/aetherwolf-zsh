" use space as leader key
let mapleader = "\<Space>"

" extra ways to exit insert mode
imap jk <Esc>
imap <S-CR> <Esc>

" quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" copy to system clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" paste from system clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" set some leader shortcuts
nnoremap <Leader>w :w<CR>
nnoremap <Leader>e :Explore<CR>

" fix common typos
command! Q q " bind :Q to :q

" toggle autocommenting etc when pasting from websites
set pastetoggle=<Insert> 

" press leader twice for visual mode
nmap <Leader><Leader> V
