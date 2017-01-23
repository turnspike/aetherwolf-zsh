" ---
" --- load and configure vim plugins using vim-plug (https://github.com/junegunn/vim-plug)
" ---

" --- install vim-plug if needed
if empty(glob("~/.vim/autoload/plug.vim"))
    " ensure all needed directories exist
    execute 'mkdir -p ~/.vim/plugged'
    execute 'mkdir -p ~/.vim/autoload'
    " download vim-plug
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

" --- colorschemes
Plug 'captbaritone/molokai'
Plug 'chriskempson/vim-tomorrow-theme'
" Plug 'altercation/vim-colors-solarized'
" Plug 'fxn/vim-monochrome'
" Plug 'chriskempson/base16-vim'
Plug 'NLKNguyen/papercolor-theme'
" Plug 'flazz/vim-colorschemes'

"-- extensions

Plug 'aaronbieber/vim-quicktask'

Plug 'mileszs/ack.vim'
" Default params for ack
let g:ackprg="ack -H --nocolor --nogroup --column"
" Add a mark and search
nmap <leader>j mA:Ack<space>
" Add a mark and search for the word under the cursor
nmap <leader>ja mA:Ack "<C-r>=expand("<cword>")<cr>"
nmap <leader>jA mA:Ack "<C-r>=expand("<cWORD>")<cr>"

Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'roxma/vim-tmux-clipboard'
Plug 'christoomey/vim-tmux-navigator'
let g:tmux_navigator_no_mappings = 1

"nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
"#nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
"#nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
"#nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
"#nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

"-- fugitive
Plug 'tpope/vim-fugitive'

"-- subst live preview
Plug 'osyo-manga/vim-over'

"-- ctags

" regenerate ctags
map <leader>tr :!ctags --extra=+f -R *<CR><CR>

" jump to first matching tag
map <leader>tj <c-]>

" move forward and back through matching tags
map <leader>tp :tprevious<CR>
map <leader>tn :tnext<CR>

"-- contolp: easily find files and buffers
Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_show_hidden = 1 "list .dotfiles
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>o :CtrlP<CR>
nnoremap <leader>. :CtrlPTag<CR>
"let g:ctrlp_map = '<leader-p>'

" Plug 'tacahiroy/ctrlp-funky'
" nnoremap <Leader>fu :CtrlPFunky<Cr>
" " narrow the list down with a word under cursor
" nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<CR>

" visually select outwards using <v>
Plug 'terryma/vim-expand-region'
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" session management based on folder or git (recommend adding git .vim folder to gitignore)
"Plug 'vim-obsession'
" Plug 'wting/gitsessions.vim'
" nnoremap <leader>gss :GitSessionSave<cr>
" nnoremap <leader>gsl :GitSessionLoad<cr>
" nnoremap <leader>gsd :GitSessionDelete<cr>

Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'

" show git line status in left gutter
Plug 'airblade/vim-gitgutter'
nnoremap <leader>gg :GitGutterToggle<CR>

"Plug 'rhysd/conflict-marker.vim' " show git conflicts
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

Plug 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1 " add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1 " use compact syntax for prettified multi-line comments
let g:NERDCommentEmptyLines = 1 " allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDTrimTrailingWhitespace = 1 " enable trimming of trailing whitespace when uncommenting

Plug 'scrooloose/nerdtree'
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif " always show nt when starting vim
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " close vim if only nt left open
nnoremap <leader>nt :NERDTreeToggle<CR>
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'sjbach/lusty'
nnoremap <leader>lf :LustyFilesystemExplorer<CR>
" tpope/vim-sleuth

" show tag sidebar for current file
Plug 'majutsushi/tagbar'
nnoremap <leader>tt :TagbarToggle<CR>

" vimwiki stuff
Plug 'vimwiki/vimwiki'
"Plug 'tbabej/taskwiki'
"unmap d " stop vimwiki eating d key

" calendar widget
Plug 'mattn/calendar-vim'

" enable calendar support in vimwiki
au BufRead,BufNewFile *.wiki set filetype=vimwiki
:autocmd FileType vimwiki map d :VimwikiMakeDiaryNote
function! ToggleCalendar()
    execute ":Calendar"
    if exists("g:calendar_open")
        if g:calendar_open == 1
            execute "q"
            unlet g:calendar_open
        else
            g:calendar_open = 1
        end
    else
        let g:calendar_open = 1
    end
endfunction
:autocmd FileType vimwiki map c :call ToggleCalendar()

" visual marks
Plug 'kshenoy/vim-signature'

" pretty status bar
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" statusbar - use unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = ''
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_section_c = '' " default is (bufferline or filename)
let g:airline_section_x = '' " default is (tagbar, filetype, virtualenv)
let g:airline_section_y = '' " default is (fileencoding, fileformat)

let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline_theme = 'powerlineish'

" start screen menu
Plug 'mhinz/vim-startify'

filetype plugin indent on
call plug#end()
