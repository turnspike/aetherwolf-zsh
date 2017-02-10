"#-- note: plugin specific keybinds live in plugins.vim

" use space as leader key
map <space> <leader>
"map <space><space> <leader><leader>
"let maplocalleader = ","

" extra ways to exit insert mode
imap jk <esc>
"imap <s-cr> <esc>

"#-- buffers
map <leader>bd :bdelete<cr>
map <leader>bn :bnext<cr>
map <leader>bp :bprev<cr>
map <leader>bc :enew<cr>

"#-- splits

"" quicker window movement
"nnoremap <C-J> <C-w>j
"nnoremap <C-S-k> <C-w>k
"nnoremap <C-H> <C-w>h
"nnoremap <C-L> <C-w>l
" also use leader w for window command prefix
"nnoremap <leader>w <c-w>
nnoremap <leader>h <c-w>h
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>l <c-w>l

nmap <leader>sv :vsplit<cr>
nmap <leader>sh :split<cr>
nmap <leader>sd :q<cr>
nmap <leader>shg :resize +5<cr>
nmap <leader>shs :resize -5<cr>
nmap <leader>svg :vertical resize -5<cr>
nmap <leader>svs :vertical resize +5<cr>

"#-- copy/paste

" copy to system clipboard
vnoremap <leader>y "+y
nnoremap <leader>Y "+yg_
nnoremap <leader>yy "+yy

" paste from system clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P

" don't copy the contents of an overwritten selection
"vnoremap p "_dP

" toggle autocommenting etc when pasting from websites
set pastetoggle=<leader>x

"#-- cursor
" move cursor naturally through wrapped lines
nnoremap j gj
nnoremap k gk

"#-- lines

" double-tap current line in visual mode
nmap <leader><leader> V

" duplicate line
"map <leader>[ "ayy"ap
noremap <leader>d "ayy"ap
" join line

"map <leader>D "ayy"aP

"#-- paragraphs
" clone paragraph
noremap <leader>[ vipy'>p
"cp yap<S-}>p

"-- files
"nnoremap <leader>s :w<cr>
"inoremap <leader>s <C-c>:w<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>e :Explore<cr>
noremap <leader>q :q<cr>
" write files as sudo using w!!
"cnoremap w!! %!sudo tee > /dev/null %
cmap w!! w !sudo tee % >/dev/null

" vimrc
nnoremap <leader>ce :e $MYVIMRC<cr>
nnoremap <leader>cr :so $MYVIMRC<cr>

"#-- fix common typos
" use Q to record macros (don't use Ex mode)
nnoremap Q q
" normal q does nothing
nnoremap q <nop>
" don't use q: command (TODO: find a remap for q:)
map q: <nop>

"#-- neovim
" exit terminal mode
tnoremap jk <C-\><C-n>
