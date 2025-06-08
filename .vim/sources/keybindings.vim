" Define leader key.
let mapleader = "\\"

" Command line window is annoying for me.
nnoremap q: <nop>
nnoremap q/ <nop>
nnoremap q? <nop>

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Toggle paste mode when inserting.
nnoremap <leader>v :set invpaste<CR>

" Move tabs.
nnoremap <silent><leader>< :tabmove -1<CR>
nnoremap <silent><leader>> :tabmove +1<CR>

" Synchronize clipboard
" 1. For ssh connection.(use x11 forwarding)
" nnoremap <silent><leader>y :call system('xclip -r', @0)<CR>
" 2. For local.(use macOS pbcopy/pbpaste)
nnoremap <silent><leader>y :call system('pbcopy', trim(@0))<CR>

" Code snippets
"
" Markdown inline code
" ia mdc;; ``
" Markdown code block
" ia mdb;; ``````<ESC>k
