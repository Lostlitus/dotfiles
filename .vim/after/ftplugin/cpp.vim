" Vim always sources ftplugin/c.vim in ftplugin/cpp.vim, but ftplugin/cpp.vim
" does not override ftplugin/c.vim. So if any overriding is needed, they should
" be put here.

" Sets format indent.
" Show existing tab with 2 spaces width.
set tabstop=2

" When indenting with '>', use 2 spaces width.
set shiftwidth=2

" On pressing tab, insert spaces instead.(The spaces number equals to
" the value of shiftwidth.
set expandtab

" Aligns switch and its case labels in the same column.
set cinoptions+=:0

" Highlight 120 column to ensure code style.
set colorcolumn=120
