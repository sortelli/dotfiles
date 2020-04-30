" use `set filetype` to override default filetype=xml for *.ts files
autocmd BufNewFile,BufRead *.ts,*.tsx  set filetype=typescript
" use `setfiletype` to not override any other plugins like ianks/vim-tsx
autocmd BufNewFile,BufRead *.tsx setfiletype typescript
