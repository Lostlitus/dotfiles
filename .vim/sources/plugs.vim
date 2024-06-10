" Vim plugin manager Plug configuration.
call plug#begin()

" Vim theme. And plugins for additional syntax highlighting.
Plug 'NLKNguyen/papercolor-theme'
Plug 'NLKNguyen/c-syntax.vim'

" Formatted tabline.
Plug 'mkitt/tabline.vim'

" Linter plugin for different languages.
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Highlight trailing whitespace.
Plug 'ntpeters/vim-better-whitespace'

" Comment patch for vim.
Plug 'tpope/vim-commentary'

" Better vim pasta.
Plug 'sickill/vim-pasta'

" Support for surroundings"
Plug 'tpope/vim-surround'

" nnn in vim.
Plug 'mcchrish/nnn.vim'

" fzf in vim.
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Compiles and run asynchronously.
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'

" VCS differences indicator.
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

" Vim git wrapper.
Plug 'tpope/vim-fugitive'

" Save layout automaticly.
Plug 'tpope/vim-obsession'

" Save and load view automaticly.
Plug 'vim-scripts/restore_view.vim'

" Write plugin infomation above.
call plug#end()

if ! empty(globpath(&rtp, 'sources/plug-specific/papercolor.vim'))
    source $HOME/.vim/sources/plug-specific/papercolor.vim
endif
if ! empty(globpath(&rtp, 'sources/plug-specific/coc.vim'))
    source $HOME/.vim/sources/plug-specific/coc.vim
endif
if ! empty(globpath(&rtp, 'sources/plug-specific/nnn.vim'))
    source $HOME/.vim/sources/plug-specific/nnn.vim
endif
if ! empty(globpath(&rtp, 'sources/plug-specific/fzf.vim'))
    source $HOME/.vim/sources/plug-specific/fzf.vim
endif
if ! empty(globpath(&rtp, 'sources/plug-specific/asyncrun.vim'))
    source $HOME/.vim/sources/plug-specific/asyncrun.vim
endif
if ! empty(globpath(&rtp, 'sources/plug-specific/restore_view.vim'))
    source $HOME/.vim/sources/plug-specific/restore_view.vim
endif
if ! empty(globpath(&rtp, 'sources/plug-specific/signify.vim'))
    source $HOME/.vim/sources/plug-specific/signify.vim
endif
