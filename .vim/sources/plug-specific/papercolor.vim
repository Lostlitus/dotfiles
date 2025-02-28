" Override some color choices. This works by appending highlight operation
" after applying color scheme. So these line should be put above colorscheme
" command.
" LSP now supports semantic token, which greatly improves syntax highlighting
" work. And Coc.nvim in my plugins has adapted it, so I override some words
" from it as well.
autocmd ColorScheme * highlight CocSemTypeClass cterm=bold ctermfg=135 gui=bold guifg=#af5fff
autocmd ColorScheme * highlight CocSemTypeStruct cterm=bold ctermfg=135 gui=bold guifg=#af5fff
autocmd ColorScheme * highlight CocSemTypeProperty cterm=none ctermfg=220 gui=bold guifg=#ffdf00
autocmd ColorScheme * highlight Identifier cterm=None gui=None ctermfg=173 guifg=#40ffff
autocmd ColorScheme * highlight link CocSemTypeTypeParameter Type

" Language specific highlighting
" Rust
autocmd ColorScheme * highlight rustStructure cterm=None ctermfg=74
autocmd ColorScheme * highlight rustAttribute cterm=None ctermfg=74
autocmd ColorScheme * highlight rustOperator cterm=None ctermfg=74

"Set and configure vim theme.
let g:PaperColor_Theme_Options = {
\   'theme': {
\     'default': {
\       'allow_italic': 1
\     }
\   }
\}
set t_Co=256
set background=dark

colorscheme PaperColor
