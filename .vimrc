let g:jsx_ext_required = 0

:colorscheme torte
:filetype plugin on
:syn on
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set wildmode=longest,list
set wildmenu

command Prr :1,$! npx prettier --stdin-filepath="%"

" See https://github.com/preservim/vim-markdown
autocmd FileType markdown normal zR
let g:mkdp_highlight_css='~/.vim/pack/plugins/start/markdown-preview.nvim/github-markdown-dark.css'

let $BASH_ENV = "$HOME/.vim/bash_env.sh"
