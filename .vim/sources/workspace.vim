" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with `vim
" -u foo`).
set nocompatible

" Use utf-8 instead of the default latin1.
set encoding=utf-8

" Set the file detecting list to ensure that files can be decoded.
set fileencodings=utf-8,gb18030

" Auto identify file type to active corresponding plugins and indent rules.
" Simply speaking, to read configurations under '~/.vim/ftplugin'.
filetype plugin indent on

" Disable the default Vim startup message.
set shortmess+=I

" Show row and column status
set ruler

" Show line numbers.
set number

" Highlight current line.
set cursorline

" This enables relative line numbering mode. For better navigation.
set relativenumber

" Highlight 80 column to ensure code style.
set colorcolumn=80

" Always show the status line at the bottom, even if you only have one window
" open.
set laststatus=2

" Use line break display in small display.
set linebreak

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" Active auto indent in insert mode.
set autoindent

" Default tab width is 4.
set tabstop=4
set shiftwidth=4

" On pressing tab, insert spaces instead.(The spaces number equals to
" the value of shiftwidth) Some files need an acutal tab to work correctly,
" (For example, makefile) but global ftplugin file is enough to handle them.
" (For makefile, global make.vim manually disable expandtab)
set expandtab

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Set time interval for better interactivity.
set updatetime=100

" Reset timeoutlen and ttimeoutlen for better mapping delays and key code
" delays, respectively.
set timeout timeoutlen=3000 ttimeoutlen=100

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a

" Turn on syntax highlighting.
syntax on

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Ban the useless .swap file created by vim when computer is crashed.
set noswapfile

" Some lsps have issues with backup files.
set nobackup
set nowritebackup

" Highlight tabs.
highlight Tab ctermbg=red
match Tab "\t"

" Aligns switch and its case labels in the same column.
set cinoptions+=:0
