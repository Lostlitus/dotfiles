" Enable lsp for zsh.
let g:coc_filetype_map = {
  \ 'zsh': 'sh',
  \ }

" Use tab/s-tab to navigate forward/backward completion items.
inoremap <silent><expr> <TAB>
\ coc#pum#visible() ? coc#pum#next(1) :
\ CheckBackspace() ? "\<Tab>" :
\ coc#refresh()
inoremap <silent><expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Use <c-tab> to trigger completion.
inoremap <silent><expr> <c-tab> coc#refresh()

" Diagnostics navigation.
" Use `:CocDiagnostics` to get all diagnostics.
nmap <silent> <leader>[ <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>] <Plug>(coc-diagnostic-next)

" Code definition/references navigation.
nmap <silent> <leader>d <Plug>(coc-definition)
nmap <silent> <leader>r <Plug>(coc-references)

" Show documentation in preview window.
nnoremap <silent> <leader>D :call ShowDocumentation()<CR>

" Toggle call hierarchy. I use incoming calls only.
nnoremap <silent> <leader>i :call CocAction('showIncomingCalls')<CR>
nnoremap <silent> <leader>I :call CloseCalls()<CR>
function! CloseCalls() abort
  let winid = coc#window#find('cocViewId', 'CALLS')
  if winid != -1
      call coc#window#close(winid)
  endif
endfunction

" Bug here, Closing outline only hide it. It would reopen after switching back.
" Toggle outline.
" nnoremap <silent> <leader>o :call CocAction('showOutline')<CR>
" nnoremap <silent> <leader>O :call CloseOutline()<CR>
" function! CloseOutline() abort
"   let winid = coc#window#find('cocViewId', 'OUTLINE')
"   if winid != -1
"       call coc#window#close(winid)
"   endif
" endfunction

" Remap <C-f> and <C-b> to scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <leader>; coc#float#scroll(0)
  nnoremap <silent><nowait><expr> <leader>' coc#float#scroll(1)
endif

augroup mygroup
  autocmd!
  " Show signature while typing.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting code
nmap <silent> <leader>f :call CocActionAsync('format')<CR>

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  endif
endfunction
