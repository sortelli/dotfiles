let g:jsx_ext_required = 0
let g:vim_markdown_folding_disabled = 1

:colorscheme torte
:filetype plugin on
:syn on
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set wildmode=longest,list
set wildmenu

command Prr :1,$! npx prettier --stdin-filepath="%"
