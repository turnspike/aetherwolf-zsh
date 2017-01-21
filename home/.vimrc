set nocompatible

" use space as leader key
let mapleader = "\<Space>"

source ~/.vim/plugins.vim
source ~/.vim/environment.vim
"filetype on
"syntax enable

"set mouse=a " enable the mouse
"set hidden " hide modified buffers when opening new buffers with :e

nnoremap <Leader>w :w<CR>
nnoremap <Leader>e :Explore<CR>
nnoremap <Leader>E :Rex<CR>
command! Q q " Bind :Q to :q

" easily open/reload vimrc
" (e)dit (v)imrc
nnoremap <leader>ev :split $MYVIMRC<CR>
" (s)ource (v)imrc
nnoremap <leader>sv :source $MYVIMRC<CR>

" better scrolling
"nmap <C-j> 4j4<C-e>
"nmap <C-k> 4k4<C-y>

" attempt for fix pageup/pagedown
map <PageUp> <C-U>
map <PageDown> <C-D>
imap <PageUp> <C-O><C-U>
imap <PageDown> <C-O><C-D>

" control keys cycle through windows
"nnoremap <c-j> <c-w>j
"nnoremap <c-k> <c-w>k
"nnoremap <c-h> <c-w>h
"nnoremap <c-l> <c-w>l

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

" copy & paste to system clipboard with <Space>p and <Space>y
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

nmap <Leader><Leader> V

set pastetoggle=<Insert> " toggle autocommenting etc when pasting from websites

" retain selection when indenting
vnoremap > >gv
vnoremap < <gv

"inoremap fj <Esc>l
" use jk to exit insert mode (jk rarely occurs in english words)
imap jk <Esc>
" use jj to exit insert mode without moving cursor
"inoremap jj <Esc>l
" also use shift-enter to exit insert mode
imap <S-CR> <Esc>

"let CursorColumnI = 0 "the cursor column position in INSERT
"autocmd InsertEnter * let CursorColumnI = col('.')
"autocmd CursorMovedI * let CursorColumnI = col('.')
"autocmd InsertLeave * if col('.') != CursorColumnI | call cursor(0, col('.')+1) | endif

"" moving between splits
"nnoremap <C-j> <C-w><C-j>
"nnoremap <C-k> <C-w><C-k>
"nnoremap <C-l> <C-w><C-l>
"nnoremap <C-h> <C-w><C-h>

" moving between buffers and tabs
"map <C-u> :bnext<CR>
"map <C-i> :bprev<CR>
"map <C-l> :tabn<CR>
"map <C-h> :tabp<CR>

" TODO change  change cursor color depending on mode
" set cursorline
" default colors for cursorline
"highlight  CursorLine ctermbg=Yellow ctermfg=None
" change color when entering insert mode
" autocmd InsertEnter * highlight  CursorLine ctermbg=Green ctermfg=Red
" " revert color to default when leaving insert mode
" autocmd InsertLeave * highlight  CursorLine ctermbg=Yellow ctermfg=None"

"set path=.,**
"nnoremap <Leader>o :find *

" --- line mgmt
" insert blank line
nnoremap <Leader>I a<CR><Esc>k$
" duplicate line
"map <Leader>d "ayy"ap
nmap <Leader>d mzyyp`z

" -- search and replace

set incsearch "incremental search
set hlsearch " highlight search hits
map <leader>, :nohlsearch<CR>

" search things usual way using /something
" press cs, replace first match, and hit <Esc>
" press n.n.n.n.n. reviewing and replacing all matches
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

"let g:neocomplcache_disable_auto_complete = 1

" don't move cursor left when leaving insert mode
" inoremap <silent> <Esc> <C-O>:stopinsert<CR> 

" enable writing files as sudo using w!!
cnoremap w!! %!sudo tee > /dev/null %

" fix cursor in TMUX
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" fix control-page keys under tmux
if &term == "screen"
    set t_kN=^[[6;*~
    set t_kP=^[[5;*~
endif

" don't copy the contents of an overwritten selection
vnoremap p "_dP

" git leader shortcuts
nnoremap <leader>gc :<c-u>!git commit<cr>
nnoremap <leader>gca :<c-u>!git commit -a<cr>

" searchign with ack
" Default params for ack
let g:ackprg="ack -H --nocolor --nogroup --column"
" Add a mark and search
nmap <leader>j mA:Ack<space>
" Add a mark and search for the word under the cursor
nmap <leader>ja mA:Ack "<C-r>=expand("<cword>")<cr>"
nmap <leader>jA mA:Ack "<C-r>=expand("<cWORD>")<cr>"

if filereadable(expand("~/.vimrc-local"))
    source ~/.vimrc-local
endif
