"set autoindent
"set autoread                                                 " reload files when changed on disk, i.e. via `git checkout`
set backspace=indent,eol,start " mainstream backspace behaviour
"set backspace=2                                              " Fix broken backspace in some setups
"set backupcopy=yes                                           " see :help crontab
set clipboard=unnamed                                        " yank and paste with the system clipboard
set directory-=.                                             " don't store swapfiles in the current directory
set encoding=utf-8
set expandtab                                                " expand tabs to spaces
"set formatoptions=cro " don't screw up autocomments when pasting from system clipboard
set hidden " hide current buffer (file) instead of abandoning when switching
set incsearch "hilite search results while typing
set ignorecase                                               " case-insensitive search
set incsearch                                                " search as you type
set laststatus=2                                             " always show statusline
"set list                                                     " show trailing whitespace
"set listchars=tab:▸\ ,trail:▫
"set nobl " don't list buffer names in command line"
set noerrorbells " prevent beeps
set noruler
"set noshowcmd                                                " hide command line
set noshowmode " airline handles mode display
set nostartofline "motion commands preserve column of cursor
set number                                                   " show line numbers
"set ruler                                                    " show where you are
set scrolloff=3                                              " show context above/below cursorline
set shiftwidth=4                                             " normal mode indentation commands use 4 spaces
set smartcase                                                " case-sensitive search if any caps
set softtabstop=4                                            " insert mode tab and backspace use 4 spaces
set t_Co=256
set tabstop=4                                                " tabs occupy 4 characters
set timeout " use timeouts for keyboard combo mappings
set timeoutlen=300 ttimeoutlen=10
set title " update window/terminal title
set visualbell " prevent beeps
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full

syntax enable

filetype on
filetype plugin on
filetype indent on

" don't autocomment newlines
autocmd FileType * setlocal formatoptions-=cro
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

" -- enable basic mouse behavior such as resizing buffers.
" set mouse=a
" if exists('$TMUX')  " Support resizing in tmux
"   set ttymouse=xterm2
"   endif

