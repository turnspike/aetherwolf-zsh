" use space as leader key
let mapleader = "\<Space>"
" let maplocalleader = ","

" extra ways to exit insert mode
imap jk <Esc>
imap <S-CR> <Esc>

"-- splits

" quicker window movement
nnoremap <C-J> <C-w>j
nnoremap <C-S-k> <C-w>k
nnoremap <C-H> <C-w>h
nnoremap <C-L> <C-w>l

"let g:tmux_navigator_no_mappings = 1

"nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
"nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
"nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
"nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
"nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

nmap <leader>sv :vsplit<cr>
nmap <leader>sh :split<cr>
nmap <leader>= :resize +5<cr>
nmap <leader>- :resize -5<cr>
nmap <leader>] :vertical resize -5<cr>
nmap <leader>[ :vertical resize +5<cr>

"-- copy/paste

" copy to system clipboard
vnoremap <leader>y  "+y
nnoremap <leader>Y  "+yg_
nnoremap <leader>y  "+y
nnoremap <leader>yy "+yy

" paste from system clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" don't copy the contents of an overwritten selection
vnoremap p "_dP

" toggle autocommenting etc when pasting from websites
set pastetoggle=<leader>z

"-- fix common typos
" use Q to record macros (don't use Ex mode)
nnoremap Q q
" normal q does nothing
nnoremap q <nop>
" don't use q: command (TODO: find a better mapping)
map q: <nop>

" press leader twice for visual mode
nmap <leader><leader> V

" move cursor naturally through wrapped lines
nnoremap j gj
nnoremap k gk

"-- lines
" insert blank line
nnoremap <Leader>I a<CR><Esc>k$
" duplicate line
"map <Leader>d "ayy"ap
nmap <Leader>d mzyyp`z

"-- paragraphs
noremap cp yap<S-}>p

"-- files
nnoremap <leader>s :w<cr>
"inoremap <leader>s <C-c>:w<cr>
nnoremap <leader>w :w<CR>
nnoremap <leader>e :Explore<CR>
noremap <leader>q :q<cr>
" write files as sudo using w!!
"cnoremap w!! %!sudo tee > /dev/null %
cmap w!! w !sudo tee % >/dev/null

"-- neovim
" exit terminal mode
tnoremap jk <C-\><C-n>
