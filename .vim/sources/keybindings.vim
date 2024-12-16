" Define leader key.
let mapleader = "\\"

" Try to prevent bad habits like using the arrow keys for movement. This is not
" the only possible bad habit. For example, holding down the  h/j/k/l keys for
" movement, rather than using more efficient movement commands, is also a bad
" habit. The former is enforceable through a .vimrc, while we don't know how
" to prevent the latter. Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" Command line window is annoying for me.
nnoremap q: <nop>
nnoremap q/ <nop>
nnoremap q? <nop>

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Toggle paste mode when inserting.
nnoremap <leader>v :set invpaste<CR>

" Synchronize clipboard
" 1. For ssh connection.(use x11 forwarding)
" nnoremap <silent><leader>y :call system('xclip -r', @0)<CR>
" 2. For local.(use macOS pbcopy/pbpaste)
nnoremap <silent><leader>y :call system('pbcopy', trim(@0))<CR>
